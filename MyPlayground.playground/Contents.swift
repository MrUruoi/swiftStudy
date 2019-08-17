import Cocoa

//// Multiline String Literals -----------------------------------
//let quotation = """
//The White Rabbit put on his spectacles.  "Where shall I begin,
//please your Majesty?" he asked.
//
//"Begin at the beginning," the King said gravely, "and go on
//till you come to the end; then stop."
//"""
//
//let singleLineString = "These are the same."
//let multilineString = """
//These are the same.
//"""
//
//let softWrappedQuotation = """
//The White Rabbit put on his spectacles.  "Where shall I begin, \
//please your Majesty?" he asked.
//
//"Begin at the beginning," the King said gravely, "and go on \
//till you come to the end; then stop."
//"""


//// Extended String Delimiters -----------------------------------
//let threeMoreDoubleQuotationMarks = #"""
//Here are three more double quotes: """
//"""#


////Initializing an Empty String -----------------------------------
//var emptyString = ""               // empty string literal
//var anotherEmptyString = String()  // initializer syntax
//// these two strings are both empty, and are equivalent to each other
//
//if emptyString.isEmpty {
//    print("Nothing to see here")
//}


////Working with Characters -----------------------------------
//let exclamationMark: Character = "!"
//let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
//let catString = String(catCharacters)
//print(catString)


//// Concatenating Strings and Characters -----------------------------------
//var welcome = "asdf"
//let exclamationMark: Character = "!"
//welcome.append(exclamationMark)


//// Counting Characters -----------------------------------
//let unusualMenagerie = "Koala 🐨"
//print(unusualMenagerie.count)


////String indices -----------------------------------
//let greeting = "Guten Tag!"
//print(greeting[greeting.startIndex])
////print(greeting[greeting.endIndex])
//print(greeting[greeting.index(before: greeting.endIndex)])
//print(greeting[greeting.index(after: greeting.startIndex)])
//
//let index = greeting.index(greeting.startIndex, offsetBy: 7)
//print(greeting[index])
//
//for index in greeting.indices {
//    print("\(greeting[index])", terminator: "")
//}


//// Inserting and Removing -----------------------------------
//var welcome = "hello"
//welcome.insert("!", at: welcome.endIndex)
//print(welcome)
//welcome.insert(contentsOf: " there!", at: welcome.endIndex)
//print(welcome)
//
//welcome.remove(at: welcome.index(before: welcome.endIndex))
//print(welcome)
//
//let range = welcome.index(welcome.endIndex, offsetBy: -6) ..< welcome.endIndex
//welcome.removeSubrange(range)
//print(welcome)


//// Substrings -----------------------------------
//let greeting = "Hello, world!"
//let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
//let beginning = greeting[..<index]
//print(beginning)
//
//let newString = String(beginning)


//// Comparing Strings -----------------------------------
//let quotation = "We’re a lot alike, you and I."
//let sameQuotation = "We’re a lot alike, you and I."
//if quotation == sameQuotation {
//    print("These two strings are considered equal")
//}
//
//let romeoAndJuliet = [
//    "Act 1 Scene 1: Verona, A public place",
//    "Act 1 Scene 2: Capulet's mansion",
//    "Act 1 Scene 3: A room in Capulet's mansion",
//    "Act 1 Scene 4: A street outside Capulet's mansion",
//    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
//    "Act 2 Scene 1: Outside Capulet's mansion",
//    "Act 2 Scene 2: Capulet's orchard",
//    "Act 2 Scene 3: Outside Friar Lawrence's cell",
//    "Act 2 Scene 4: A street in Verona",
//    "Act 2 Scene 5: Capulet's mansion",
//    "Act 2 Scene 6: Friar Lawrence's cell"
//]
//var act1SceneCount = 0;
//for scene in romeoAndJuliet {
//    if scene.hasPrefix("Act 1 ") {
//        act1SceneCount += 1
//    }
//}
//print("There are \(act1SceneCount) scenes in Act 1")
//var mansionCount = 0
//var cellCount = 0
//for scene in romeoAndJuliet {
//    if scene.hasSuffix("Capulet's mansion") {
//        mansionCount += 1
//    } else if scene.hasSuffix("Friar Lawrence's cell") {
//        cellCount += 1
//    }
//}
//print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")


//// Unicode Representations of Strings -----------------------------------
//let dogString = "Dog‼🐶"
//for codeUnit in dogString.utf8 {
//    print("\(codeUnit) ", terminator: "")
//}
//print("")
//
//for codeUnit in dogString.utf16 {
//    print("\(codeUnit) ", terminator: "")
//}
//print("")
//
//for scalar in dogString.unicodeScalars {
//    print("\(scalar.value) ", terminator: "")
//}
//print("")
