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
  fun name(): String

interface HasAge
  fun age(): U32

interface HasFeelings
  fun feelings(): String

type Person is (HasName & HasAge & HasFeelings) 



