# libgoast

This utility library has been extracted out of the CPG project and contains the
go/ast package (and related utility packages) in a shared Go/C library. It
exposes most of the structs in the `go/ast` and `go/token` package and their
functions as global functions and makes them available as exported C functions.

## Build

You can use `./build.sh` to build the library.