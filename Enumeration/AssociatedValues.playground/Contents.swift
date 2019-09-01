import Cocoa

// 1. Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBardcode = Barcode.upc(8, 85909, 51226, 3)
print(productBardcode)
productBardcode = .qrCode("ABCDEFGHIJKLMNOP")
print(productBardcode)

switch productBardcode {
case .upc(let numberSystem, let manufacurer, let product, let check):
    print("UPC: \(numberSystem) \(manufacurer) \(product) \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode)")
}

// If all of the associated values for an enumeration case are extracted as constants, or if all are extracted as variables,
// you can place a single var or let annotation before the case name, for brebity:

switch productBardcode {
case let .upc(numberSystem, manufacurer, product, check):
    print("UPC: \(numberSystem) \(manufacurer) \(product) \(check).")
case let .qrCode(productCode):
    print("QR code: \(productCode)")
}
