[%%suite
 open Core.Std
 module S = Sdlcaml_image.Std

 let with_image f =
   let module R = Sdlcaml.Std.Types.Result in
   let open Sdlcaml.Std.Types.Result.Monad_infix in
   S.General.init [`PNG] >>= (fun () ->
     protect ~f ~finally:(fun () -> S.General.quit ()) |> R.return
   ) |> ignore

 let%spec "Sdlcaml_image can load supported image file" =
   with_image (fun () ->
     let open Sdlcaml.Std.Types.Result.Monad_infix in
     let ret = S.Loader.load "sample.png" >>= Sdlcaml.Std.Surface.free in
     (Sdlcaml.Std.Types.Result.is_success ret) [@true "loading success"]
   )
]
