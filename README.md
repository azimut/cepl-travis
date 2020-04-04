# cepl-travis

Building a [cepl](https://github.com/cbaggers/cepl/) binary in travis with [deploy](https://github.com/Shinmera/deploy/) for multiple OS's.

Adapted from [.travis.yaml](https://github.com/phoe-trash/furcadia-post-splitter/blob/b60faba/.travis.yml).

## Notes

- `travis setup releases` to get github key
- SDL2:
  - linux: from apt
  - osx: from brew
  - windows: from official binaries
- OPENGL:
  - windows: installed opengl32.dll from [mesa-dist-win](https://github.com/pal1000/mesa-dist-win)
  - all: `(deploy:define-library)` to not package it
- ZLIB
  - windows: manual compilation
## License

MIT

