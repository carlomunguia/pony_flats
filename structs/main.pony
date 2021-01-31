struct Inner
  var x: I32 = 0

struct Outer
  embed inner_embed: Inner = Inner
  var inner_var: Inner = Inner

struct Pointer[A]

  new create() =>
    compile_intrinsic

  new _alloc(len: USize)
    compile_intrinsic  

