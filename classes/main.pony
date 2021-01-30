class Planet
  let planetType: String
  var _radiation_level: U64
  var _heat_level: U64 = 1


  new create(planet_type': String) =>
    planetType = planetType'
    _radiation_level = 0
  
  new radiation(planet_type': String, radiation': U64)
    planetType = planetType'
    _radiation_level = radiation'

  fun radiator(): U64 => _radiation_level

  fun ref set_radiator(to: U64 = 0): U64 => _radiation_level = to
      

  let defaultPlanet = Planet("Neptune")
  let planetWithRadiation = Planet.radiation("Jupiter",12)

class Uranus
  var _radiation_level: U64 = 2

class Venus
  var _heat_level: U64

  new create() =>
    _radiation_level = 44

class Universe
  let _uranus: Uranus = Uranus
  let _venus: Venus = Venus





