var x: (String, U64)
x = ("hi", 3)
y = ("bye", 7)

(var y, var z) = x

var x: (String | None)

type Map[K: (Hashable box & Comparable[K] box), V] is HashMap[K,V,HashEq[K]]

var _array: Array[((K,V) | _MapEmpty | _MapDeleted)]