import Cocoa

////Creating an Empty Array
////var someInts = Array<Int>()
//var someInts = [Int]()
//someInts.append(5);
//print(someInts.count)
//someInts = []
//print(someInts.count)


////Creating an Array with a Default Value
//var threeDoubles = Array(repeating: 0.0, count: 3)
//print(threeDoubles.count)


////Creating an Array by Adding Two Arrays Together
//var threeDoubles = Array(repeating: 0.0, count: 3)
//var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
//var sixDoubles = threeDoubles + anotherThreeDoubles
//print(sixDoubles.count)


//////Creating an Array with an Array Literal
////var shoppingList: [String] = ["Eggs","Milk"]
//var shoopingList = ["Eggs", "Milk"]


////Accessing and Modifying an Array
//var shoppingList = ["Eggs", "Milk"]
//if shoppingList.isEmpty {
//    print("Empty!")
//}else{
//    print("Not Empty")
//}
//
//shoppingList.append("Flour")
//print(shoppingList[2])
//
//shoppingList += ["Cheese", "Butter"]
//
//shoppingList[0] = "Six eggs"
//
//shoppingList[4...6] = ["Bananas", "Apples"]
//
//shoppingList.insert("Maple Syrup", at: 0)
//let mapleSyrup = shoppingList.remove(at: 0)
//let apples = shoppingList.removeLast()


//// Iterating Over an Array
//var shoppingList = ["Six eggs", "Milk", "Baking Powder", "Bananas"]
//for item in shoppingList {
//    print(item)
//}
//
//for (index, item) in shoppingList.enumerated() {
//    print("\(index): \(item)")
//}
