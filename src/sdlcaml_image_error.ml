(**
   Define a module to handle some errors occured in SDL_image.

   @author derui
   @since 0.1
*)
open Ctypes
open Foreign

module Inner = struct
  let get = foreign "IMG_GetErrro" (void @-> returning string)
end

let get = Inner.get
