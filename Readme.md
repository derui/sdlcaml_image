# Sdlcaml image loader extension #

**sdlcaml-image** add ability image loading that includes some image types to sdlcaml-based application.

## Install ##
sdlcaml-image needs libraries before install follows.

- sdlcaml
- SDL2_image
- SDL2

    note: sdlcaml needs SDL2 when use it, you necessary add SDL2 library to `-cclib` flag when compile it.

## Usage ##

**sdlcaml-image** provides thin wrapper for SDL2_image. Sample code is follows.

```ocaml
module S = Sdlcaml_image.Std

let () = 
  S.General.init [`PNG; `JPG] |> ignore;
  S.Loader.load "filename.png" |> Sdlcaml.Std.Surface.free;
  S.General.quit ()
```

So, you must call first `Sdlcaml_image.Std.General.init` before you call image loading function. `Sdlcaml_image.Std.General.quit` should call before quit application, but this is not necessary always call.

`Sdlcaml_image.Std.Loader.load` load and return Sdlcaml's surface allocated SDL_image. Caution, you **MUST** call `Sdlcaml.Std.Surface.free` with surface returned from `Sdlcaml_image.Std.Loader.load`.
