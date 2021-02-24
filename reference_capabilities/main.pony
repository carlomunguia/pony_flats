fun test (a: Wombat iso) =>
  var b: Wombat iso = consume a

class Aardvark
  var buddy: Wombat iso

new create() =>
  buddy = recover Wombat end

fun ref test(a: Wombat iso) =>
  var b: Wombat iso = buddy = consume a

