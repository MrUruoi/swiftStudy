import Cocoa

//Stored Properties
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfthreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfthreeItems.firstValue = 6


//Stored Properties of Constant Structure Instances
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 6
// this will report an error, even though firstValue is a variable property


//Lazy Stored Properties
//A lazy stored property is a property whose initial value is not calculated until the first time it is used.
class DataImporter {
    /*
     DataImporter is a class to import data from an external file.
     The class is assumed to take a nontrivial amount of time to initialize.
     */
    var filename = "data.txt"
    // the DataImporter class would provide data importing functionality here
}
class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
    // the DataManager class would provide data management functionality here
}
let manager = DataManager()
manager.data.append("Some data")
manager.data.append("some more data")
// the DataImporter instance for the importer property has not yet been created
print(manager.importer.filename)
// the DataImporter instance for the importer property has now been created
