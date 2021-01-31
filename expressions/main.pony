// literals

use "format"

actor Main
new create(env: Env) =>

  let pony = "🐎"
  let pony_hex_escaped = "p\xF6n\xFF"
  let pony_unicode_escape = "\U01F40E"

  env.out.print(pony + " " + pony_hex_escaped + " " + pony_unicode_escape)

  for b in pony.values() do
    env.out.print(Format.int[U8](b, FormatHex))
  end  

  let pony = "🐎"
  let another_pony = "🐎"
  if pony is another_pony then
    env.out.print(pony + "Your princess is in another castle 🐎")
  end
  
  // arrays
  
  let my_heterogenous_array =
  [
    U64(42)
    "42"
    U64.min_value()
  ]

  let my_stringable_array: Array[Stringable] ref =
  [
    U64(0xA)
    "0xA"
  ]

  let my_immutable_array: Array[Stringable] val = 
    [
      U64(0xBEEF)
      "0xBEEF"
    ]

  let my_as_array =
  [as Stringable:
    U64(0xFFEF)
    "0xFFEF"
    U64(1 + 1)
  ]

// variables

var x = String = "Hello"

var y = "Hello"

var z: String
z = "Hello"

if a > b then 
  var x = "a is bigger"
  env.out.print(x)
end  

// Operators

class Pair
  var _x: U32 = 0
  var _y: U32 = 0

  new create(x: U32, y: U32) =>
    _x = x
    _y = y

  fun add(other: Pair): Pair =>
    Pair(_x + other._x, _y + other._y)

  class Foo
    fun foo() =>
      var x = Pair(1,2)
      var y = Pair(3,4)
      var z = x + y  

  // MATHS
  
  U32.max_value() + 1 == 0

  I32.min_value() - 1 == I32.max_value()

I32(12).f32()

// converting an I32 to an 32 bit floating point, the unsafe way
I32(12).f32_unsafe()

//  an example of an undefined unsafe conversion
I64.max_value().f32_unsafe()

// an example of an undefined unsafe conversion, that is actually safe
I64(1).u8_unsafe()

let result = 
  try 
    USize.max_value() +? env.args.size()
  else  
    env.out.print("overflow detected")
  end 

  let result = 
    match USize.max_value().addc(env.args.size())
    | (let result: USize, false) =>
      ...
    | (_, true) =>
      env.out.print("overflow detected")     
    end

    
