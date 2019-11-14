# cepl-travis

Building a [cepl](https://github.com/cbaggers/cepl/) binary in travis with [deploy](https://github.com/Shinmera/deploy/) for multiple OS's.

Adapted from [.travis.yaml](https://github.com/phoe-trash/furcadia-post-splitter/blob/b60faba/.travis.yml).

## Notes

- Only works on **osx** and **linux**
- Does not work on **windows**? [1](https://travis-ci.community/t/make-running-gui-apps-available-in-windows/1557/4) [2](https://travis-ci.org/azimut/cepl-travis/builds/611881371#L244)
- SDL2:
  - linux: Installed sdl2 from sources (does ubuntu has sdl2 somewhere)
  - osx: from brew
- `travis setup releases` to get key.
- `(deploy:define-library)` to not package opengl from ubuntu

## License

MIT

