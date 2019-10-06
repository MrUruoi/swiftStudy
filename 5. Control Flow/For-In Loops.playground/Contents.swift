import Cocoa

// 1
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

// 2
print(" - 2 - ")
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s hava \(legCount) legs")
}

// 3
print(" - 3 - ")
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// 4
// If you don't need each value from a sequence,
// you can ignore the values by using an underscore in place of a variable name.
print(" - 4 - ")
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

// 5
let minutes = 60
for tickMark in 0..<minutes {
    // render the tick mark each minute (60 times)
}

// 6
// Closed ranges are also available, by using stride(from:through:by:)
let hours = 12
let houInterval = 3
for tickMark in stride(from: 3, to: hours, by: houInterval) {
    // render the tick mark every 3 hours (3, 6, 9, 12)
}
