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



