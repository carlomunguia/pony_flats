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






