import Cocoa

// Defining and Calling Functions
print(" - 1 - ")
func greeting(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
print(greeting(person: "Anna"))
print(greeting(person: "Brian"))


// Functions with Multiple Return Values
print()
print(" - 2 - ")
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")


// Optional Tuple Return Types
print()
print(" - 3 - ")
func minMax2(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
if let bounds = minMax2(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}


// Functions With an Impicit Return
// If the entire body of the function is a single expression,
// the function implicitly returns that expression.
//func greeting2(for person: String) -> String {
//    "Hello, " + person + "!"
//}
