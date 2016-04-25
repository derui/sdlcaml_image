open Ctypes
open Foreign

module S = Sdlcaml.Std
let t = ptr S.Structures.Rw_ops.t

let is_cur = foreign "IMG_isCUR" (t @-> returning bool)
let is_ico = foreign "IMG_isICO" (t @-> returning bool)
let is_bmp = foreign "IMG_isBMP" (t @-> returning bool)
let is_pnm = foreign "IMG_isPNM" (t @-> returning bool)
let is_xpm = foreign "IMG_isXPM" (t @-> returning bool)
let is_xgf = foreign "IMG_isXGF" (t @-> returning bool)
let is_pcx = foreign "IMG_isPCX" (t @-> returning bool)
let is_gif = foreign "IMG_isGIF" (t @-> returning bool)
let is_jpg = foreign "IMG_isJPG" (t @-> returning bool)
let is_tif = foreign "IMG_isTIF" (t @-> returning bool)
let is_png = foreign "IMG_isPNG" (t @-> returning bool)
let is_lbm = foreign "IMG_isLBM" (t @-> returning bool)
let is_xv = foreign "IMG_isXV" (t @-> returning bool)
