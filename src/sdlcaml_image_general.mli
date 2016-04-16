(**
   Define a module to provide operations for general functions for SDL_image.

   @author derui
   @since 0.1
*)

type init_flags = [`JPG | `PNG | `TIF | `WEBP]

val init: init_flags list -> unit Sdlcaml.Std.Types.Result.t
(* [init flags] initialize by loading support as indicated [flags].
   This function return fail if [flags] is empty or having error to initialize.
*)

val quit: unit -> unit
(* [quit ()] cleans up some things used in Sdl_image library. *)
