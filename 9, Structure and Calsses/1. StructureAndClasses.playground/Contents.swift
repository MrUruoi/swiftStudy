import Cocoa

//Definition Syntax
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

//Structure and Class Instaces
let someResolution = Resolution()
let somevideoMode = VideoMode()

//Accessing Properties
print("The width of someResolution is \(someResolution.width)")
print("The width of someVidemoMode is \(somevideoMode.resolution.width)")
somevideoMode.resolution.width = 1280
print("The width of someVidemoMode is now \(somevideoMode.resolution.width)")

//Memberwise Initializers for Structure Types
let vga = Resolution(width: 640, height: 480)
print("\(vga.width) \(vga.height)")
