import Cocoa

////Creating and Initailizing an Empty Set
//var letters = Set<Character>()
//letters.insert("a")
//letters = []

///////////////////////////////////////////////////////////////////////////////////////

////Creating a Set with an Array Literal
//var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
//
////Accessing and Modifying a Set
//print(favoriteGenres.count)
//if favoriteGenres.isEmpty {
//    print("Empty")
//}
//favoriteGenres.insert("Jazz")
//if let removeGenre = favoriteGenres.remove("Rock") {
//    print("\(removeGenre) removed")
//}
//if favoriteGenres.contains("Funck") {
//    print("contains Funck")
//}
//print("")
////Iterating Over a Set
//for genre in favoriteGenres {
//    print(genre)
//}
//print("")
//for genre in favoriteGenres.sorted() {
//    print(genre)
//}


///////////////////////////////////////////////////////////////////////////////////////

//// Fundametal Set Operations
//let oddDigits: Set = [1, 3, 5, 7, 9]
//let evenDigits: Set = [0, 2, 4, 6, 8]
//let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
//
//oddDigits.union(evenDigits).sorted()
//// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
//oddDigits.intersection(evenDigits).sorted()
//// []
//oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
//// [1, 9]
//oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
//// [1, 2, 9]


///////////////////////////////////////////////////////////////////////////////////////

//// Set Membership and Equlity
//let houseAnimals: Set = ["🐶", "🐱"]
//let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
//let cityAnimals: Set = ["🐦", "🐭"]
//
//houseAnimals.isSubset(of: farmAnimals)
//houseAnimals.isStrictSubset(of: farmAnimals)
//farmAnimals.isSuperset(of: houseAnimals)
//farmAnimals.isStrictSuperset(of: houseAnimals)
//farmAnimals.isDisjoint(with: cityAnimals)
