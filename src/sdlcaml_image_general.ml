(**
   Define a module to provide operations for general functions for SDL_image.

   @author derui
   @since 0.1
*)
module E = Sdlcaml.Std.Error
open Ctypes
open Foreign

module Inner = struct
  let init = foreign "IMG_Init" (int @-> returning int)
  let quit = foreign "IMG_Quit" (void @-> returning void)
end

type init_flags = [`JPG | `PNG | `TIF | `WEBP]

let init flags =
  let flags = List.map (function
    | `JPG -> 0x1
    | `PNG -> 0x2
    | `TIF -> 0x4
    | `WEBP -> 0x8
  ) flags in
  let flag = List.fold_left (fun memo f -> memo lor f) 0 flags in
  let ret = Inner.init flag in
  if ret = flag then Sdlcaml.Std.Types.Result.return ()
  else Sdlcaml.Std.Types.Result.Failure (E.get ())

let quit = Inner.quit
