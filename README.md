# cepl-travis

*NOT WORKING*

Building a [cepl](https://github.com/cbaggers/cepl/) binary in travis with [deploy](https://github.com/Shinmera/deploy/) for multiple OS's.

Adapted from [.travis.yaml](https://github.com/phoe-trash/furcadia-post-splitter/blob/b60faba/.travis.yml).

## Notes

- Installed sdl2 from sources (does ubuntu has sdl2 somewhere)
- `travis setup releases` to get key.
- `(deploy:define-library)` to not package opengl from ubuntu

## License

MIT

