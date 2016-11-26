(**
   Define a module to provide operations to get infomation from the RWops.

   @author derui
   @since 0.1
*)

type image_type = BMP | CUR | GIF | ICO | JPG | LBM | PCX | PNG | PNM | TGA | TIF | XGF | XPM | XV

val load: string -> Sdlcaml.Std.Surface.t Sdlcaml.Std.Types.Result.t
(* [load fname] Load [fname] for use as an image in a new surface. Don't forget to [Sdlcaml.Std.Surface.free] the returned
   surface when you are through with it.
*)

val load_with: string -> (Sdlcaml.Std.Surface.t, 'b) Sdlcaml.Std.Types.Resource.t
(* [load_with fname] Load [fname] for use as an image in a new surface. The surface loaded this function not need apply [Sdlcaml.Std.Surface.free].
*)

val load_rw: ?free_src:bool -> Sdlcaml.Std.RWops.t -> Sdlcaml.Std.Surface.t Sdlcaml.Std.Types.Result.t
(* [load_rw ?free_src src] Load [src] for use as a surface. Don't forget to [Sdlcaml.Std.Surface.free] the returned
   surface when you are through with it.
   If [free_src] not specified or specified for true, you don't have to need call [Sdlcaml.Std.RWops.close] to [src].
*)

val load_rw_with: ?free_src:bool -> Sdlcaml.Std.RWops.t -> (Sdlcaml.Std.Surface.t, 'b) Sdlcaml.Std.Types.Resource.t
(* [load_rw ?free_src src] Load [src] for use as a surface. The surface loaded this function not need apply [Sdlcaml.Std.Surface.free].
   If [free_src] not specified or specified for true, you don't have to need call [Sdlcaml.Std.RWops.close] to [src].
*)


val load_typed_rw: ?free_src:bool -> typ:image_type -> src:Sdlcaml.Std.RWops.t -> Sdlcaml.Std.Surface.t Sdlcaml.Std.Types.Result.t
(* [load_rw ?free_src ~typ ~src] Load [src] for use as a surface. This function does not guarantee that the format specified
   by [typ] is the format of the loaded image.
   Don't forget to [Sdlcaml.Std.Surface.free] the returned surface when you are through with it.
   If [free_src] not specified or specified for true, you don't have to need call [Sdlcaml.Std.RWops.close] to [src].
*)

val load_typed_rw_with: ?free_src:bool -> typ:image_type -> src:Sdlcaml.Std.RWops.t -> (Sdlcaml.Std.Surface.t, 'b) Sdlcaml.Std.Types.Resource.t
(* [load_rw ?free_src ~typ ~src] Load [src] for use as a surface.The surface loaded this function not need apply [Sdlcaml.Std.Surface.free].
   Don't forget to [Sdlcaml.Std.Surface.free] the returned surface when you are through with it.
   If [free_src] not specified or specified for true, you don't have to need call [Sdlcaml.Std.RWops.close] to [src].
*)
