# BigNumLuaJson

A JSON reader with support for very big numbers, implemented with the
Lua C API.

## Rationale

### Big numbers
The JSON specification](http://json.org/) does not limit the sizes
of integers or floating-point numbers, but most JSON implementations
restrict them by converting to a native data-type.

This library stores numbers as strings, preserving their integrity.
A higher-level library can then be used to decode the numbers as
needed.

### Lua
Everyone has his own idea of the best way to a tree of data. Some people
want to control memory-management.

Rather than get into this battle, we consider this library to be
strictly intermediary. On the one hand, that increases storage
space and runtime. On the other, it eliminates bugs.

There are also advantages in debugging, as the entire data-structure
can be dumped or manipulated easily, via the wonderful scripting
language that is Lua.

Finally, we use a PEG parser, which is recursive-descent. Lua's stack-based
API is a perfect fit.


