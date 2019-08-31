import Cocoa

// 1
let names = ["aa", "bb", "ee", "cc", "dd"]

// 1-1
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames1 = names.sorted(by: backward)
print(reversedNames1)

// 1-2
var reversedNames2 = names.sorted(by: {(s1: String, s2: String) -> Bool in
    return s1 > s2
})
print(reversedNames2)

// 1-3
var reveredNames3 = names.sorted(by: {s1, s2 in return s1 > s2})
print(reveredNames3)

// 1-4 Implicit Returns from Single-Expression Closures
var reveredNames4 = names.sorted(by: {s1, s2 in s1 > s2})
print(reveredNames4)

// 1-5 Shorthand Argument Names
var reveredNames5 = names.sorted(by: { $0 > $1 })
print(reveredNames5)

// 1-6 Operator Methods
var reveredNames6 = names.sorted(by: >)
print(reveredNames6)

// 1-7 Trailing Closures.
//If a closure expression is provided as the function or method's only argument and you provide that expression as a trailing closure,
// you do not need to write a pair of parentheses () after the function or method's name when you call the function:
var reveredNames7 = names.sorted{ $0 > $1 }
print(reveredNames7)
