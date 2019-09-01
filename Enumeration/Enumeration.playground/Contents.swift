import Cocoa

// 1. Enumeration Syntax
enum CompassPoint {
    case north
    case south
    case east
    case west
}
// Multiple cases can appear on a single line, separated by commas
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.west
directionToHead = .east

switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

// 2. Iterating Over Enumeration
enum Beverage: CaseIterable {
    case coffe, tea, juice
}
let numberOfChoice = Beverage.allCases.count
print(numberOfChoice)
for beverage in Beverage.allCases {
    print(beverage)
}
