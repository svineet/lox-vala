Lox
===

This quarantine teaching myself how interpreters work. This is a follow along implementation
of the Lox language in [Crafting Interpreters](https://www.craftinginterpreters.com/).

Written in Vala.

Building
--------

I'm using meson to build this project, since Vala is a first citizen in Meson world.  
Makefiles are boring. :man_shrugging: :smirk:

```bash
meson _build
ninja -C _build
```

Running
-------

To execute a program
```bash
_build/lox [source_file_path]
```

To start a REPL
```
_build/lox
```

