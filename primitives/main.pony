// 2 Marker Values
primitive OpenedDoor
primitive ClosedDoor

// An Enum Type
type DoorState is (OpenedDoor | ClosedDoor)

// A collection of Functions

primitive BasicMath
  fun add(a: U64, b: U64): U64 =>
    a + b
fun multiply(a: U64, b: U64): U64 =>
  a * b

actor Main
  new create(env: Env) =>
    let doorState : DoorState = ClosedDoor
    let isDoorOpen : Bool = match doorState
      | OpenedDoor => true
      | ClosedDoor => false
    end

    env.out.print("Is the door OPEN? " + isDoorOpen.string())
    env.out.print("2 + 3 = " + BasicMath.add(2,3).string())
      