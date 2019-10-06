import Cocoa

// 1. Raw Values
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carrigaReturn = "\r"
}

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
print(Planet.venus)
let earthsOrder = Planet.earth.rawValue
print(earthsOrder)

enum CompassPoint: String {
    case north, south, east, west
}
print(CompassPoint.north)
let sunsetDirection = CompassPoint.west.rawValue
print(sunsetDirection)

print("")
// 2. Initializing from a Raw Value
let possiblePlanet = Planet(rawValue: 7)
// possiblePlanet is of type of Planet? and equals Planet.uranus

let positionToFind = 11
if let somePlanet = Planet(rawValue: positionToFind) {
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionToFind)")
}
