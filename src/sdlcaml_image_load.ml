open Ctypes
open Foreign

module S = Sdlcaml.Std
module E = S.Error

type image_type = BMP | CUR | GIF | ICO | JPG | LBM | PCX | PNG | PNM | TGA | TIF | XGF | XPM | XV

let rwops = ptr S.Structures.Rw_ops.t

module Inner = struct
  let load = foreign "IMG_Load" (string @-> returning Sdlcaml.Std.Types.Surface.t)
  let load_rw = foreign "IMG_Load_RW" (rwops @-> bool @-> returning Sdlcaml.Std.Types.Surface.t)
  let load_typed_rw = foreign "IMG_LoadTyped_RW" (rwops @-> bool @-> string @-> returning Sdlcaml.Std.Types.Surface.t)
end

let wrap pred result =
  if pred () then S.Types.Result.return result
  else S.Types.Result.Failure (E.get ())

let load fname =
  let ret = Inner.load fname in
  wrap (fun () -> to_voidp ret <> null) ret

let load_rw ?(free_src=true) src =
  let ret = Inner.load_rw src free_src in
  wrap (fun () -> to_voidp ret <> null) ret

let string_of_image_type = function
  | BMP -> "BMP"
  | CUR -> "CUR"
  | GIF -> "GIF"
  | ICO -> "ICO"
  | JPG -> "JPG"
  | LBM -> "LBM"
  | PCX -> "PCX"
  | PNG -> "PNG"
  | PNM -> "PNM"
  | TGA -> "TGA"
  | TIF -> "TIF"
  | XGF -> "XGF"
  | XPM -> "XPM"
  | XV  -> "XV"

let load_typed_rw ?(free_src=true) ~typ ~src =
  let typ = string_of_image_type typ in
  let ret = Inner.load_typed_rw src free_src typ in
  wrap (fun () -> to_voidp ret <> null) ret
