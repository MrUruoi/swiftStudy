import Cocoa

var completionHandlers: [ () -> Void ] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void){
    completionHandlers.append(completionHandler)
}
// If you didn't mark the parameter of this function with @escaping, you would get a compile-time error.


// Marking a closure with @escaping means you have to refer to slef explicitly within the closure.
func someFunctionWithNonescapingClosure(closure: () -> Void){
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)

completionHandlers.first?()
print(instance.x)
