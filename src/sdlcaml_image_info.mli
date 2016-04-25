(**
   Define a module to provide operations to get infomation from the RWops.

   @author derui
   @since 0.1
*)

val is_cur: Sdlcaml.Std.RWops.t -> bool
(* [is_cur rwops] if the BMP format is supported, then the image data is tested to see if it is
   readable as a CUR
*)

val is_ico: Sdlcaml.Std.RWops.t -> bool
(* [is_ico rwops] if the BMP format is supported, then the image data is tested to see if it is
   readable as a ICO
*)

val is_bmp: Sdlcaml.Std.RWops.t -> bool
(* [is_bmp rwops] if the BMP format is supported, then the image data is tested to see if it is
   readable as a BMP
*)

val is_pnm: Sdlcaml.Std.RWops.t -> bool
(* [is_pnm rwops] if the PNM format is supported, then the image data is tested to see if it is
   readable as a PNM
*)
  
val is_xpm: Sdlcaml.Std.RWops.t -> bool
(* [is_xpm rwops] if the XPM format is supported, then the image data is tested to see if it is
   readable as a XPM
*)

val is_xgf: Sdlcaml.Std.RWops.t -> bool
(* [is_cgf rwops] if the XGF format is supported, then the image data is tested to see if it is
   readable as a XGF
*)

val is_pcx: Sdlcaml.Std.RWops.t -> bool
(* [is_pcx rwops] if the PCX format is supported, then the image data is tested to see if it is
   readable as a PCX
*)

val is_gif: Sdlcaml.Std.RWops.t -> bool
(* [is_gif rwops] if the GIF format is supported, then the image data is tested to see if it is
   readable as a GIF
*)

val is_jpg: Sdlcaml.Std.RWops.t -> bool
(* [is_jpg rwops] if the JPG format is supported, then the image data is tested to see if it is
   readable as a JPG
*)

val is_tif: Sdlcaml.Std.RWops.t -> bool
(* [is_tif rwops] if the TIF format is supported, then the image data is tested to see if it is
   readable as a TIF
*)

val is_png: Sdlcaml.Std.RWops.t -> bool
(* [is_png rwops] if the PNG format is supported, then the image data is tested to see if it is
   readable as a PNG
*)

val is_lbm: Sdlcaml.Std.RWops.t -> bool
(* [is_lbm rwops] if the LBM format is supported, then the image data is tested to see if it is
   readable as a LBM
*)

val is_xv: Sdlcaml.Std.RWops.t -> bool
(* [is_xv rwops] if the XV format is supported, then the image data is tested to see if it is
   readable as a XV
*)
