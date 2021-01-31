primitive Red fun apply(): U32 => 0xFF0000FF
primitive Blue fun apply(): U32 => 0x00FF00FF
primitive Green fun apply(): U32 => 0x0000FFFF

type Colour is (Red | Blue | Green)

primitive ColourList
  fun apply(): Array[Colour] =>
    [Red; Green;Blue;]

  for colour in ColourList().values() do
  end 

interface HasName
  fun name(): String => 'Bob'

interface HasAge
  fun age(): U32 => 42

interface HasFeelings
  fun feelings(): String => "AWESOME! WOO-HOO!"

type Person is (HasName & HasAge & HasFeelings) 

type SetIs[A] is HashSet[A, HashIs[A]]
HashSet[A, HashIs[A!]]

type Map(K: (Hashable box & Comparable[K] box), V)
 is HashMap[K,V, HashEq[K]]

 let my_explicit_unsigned: U32 = 42_000
 let my_constructor_unsigned = U8(1)
 let my_constructor_float = F64(1.234)

 let my_decimal_int: I32 = 1024
 let my_hexadecimal_int: I32 0x400
 let my_binary_int: I32 = 0b1000000000000

 let my_double_precision_float: F64 = 0.00009999977640002848849386093
 let my_scientific_float: F32 = 42.12e-4

 let big_a: U8 = 'A'
 let hex_escaped_big_a: U8 = '\x41'
 let newline" U32 = '\n'

 let multiByte: U64 = 'ABCD' // 0x31314123334







