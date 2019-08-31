import Cocoa

////Creating an Empty Dictionary
//var namesOfIntegers = [Int: String]()
//namesOfIntegers[16] = "sixteen"
//namesOfIntegers = [:]

///////////////////////////////////////////////////////////////////

////Creating a Dictionary with a Dictionary Literal
////var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//
////Accessing and Modifying a Dictionary
//print(airports.count)
//
//if airports.isEmpty {
//    print("The airports dictionary is empty.")
//} else {
//    print("The airports dictionary is not empty.")
//}
//
//airports["LHR"] = "London"
//// the airports dictionary now contains 3 items
//airports["LHR"] = "London Heathrow"
//// the value for "LHR" has been changed to "London Heathrow"
//
//if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
//    print(oldValue)
//}
//// Prints "The old value for DUB was Dublin."
//
//if let airportName = airports["DUB"] {
//    print("The name of the airport is \(airportName).")
//} else {
//    print("That airport is not in the airports dictionary.")
//}
//// Prints "The name of the airport is Dublin Airport."
//
//airports["APL"] = "Apple Interantional"
//airports["APL"] = nil
//// APL has now been removed from the dictionary
//
//if let removedValue = airports.removeValue(forKey: "DUB") {
//    print("The removed airport's name is \(removedValue).")
//} else {
//    print("The airports dictionary does not contain a value for DUB.")
//}


///////////////////////////////////////////////////////////////////

////Iterating Over a Dictionary
//var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//for (airportCode, airportName) in airports {
//    print("\(airportCode): \(airportName)")
//}
//
//for airportCode in airports.keys {
//    print(airportCode)
//}
//for airportName in airports.values {
//    print(airportName)
//}
//
//let airportCodes = [String](airports.keys)
//let airportNames = [String](airports.values)
