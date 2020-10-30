# EasyPointer

### Rounding off some of the rough edges of Swift's pointer model.

This package is not for the faint of heart. It seeks to consolidate
all pointer conversions (rebindings) into a single more memorable
initialiser `cast:` for `UnsafePointer` and
`UnsafeMutablePointer`. It also adds comparison operators that
allow you to mix these two pointer types in an expression. This
comes up from time to time when the pointer has been obtained
from functions imported from C.

*DO NOT USE* unless if you really, really know what you're doing!

### No warrantee implied or otherwise. This is an experiment.
