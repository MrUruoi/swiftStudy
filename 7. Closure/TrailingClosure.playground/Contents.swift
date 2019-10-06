import Cocoa

// Swift's Array type has a map(_:) method which takes a closure expression as its single argument.
// The closure is called once for each item in th array, and returns an alternative mapped value (possibly of some ohter type) for that item.
// The nature of the mapping and the type of the returned value is left up to the cosure to specify.

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map{ (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}
print(strings)
