import Cocoa

var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)

let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)

print("Now serving \(customerProvider())!")
print(customersInLine.count)

// customersInLine is ["Alex", "Ewa", "Barry", "Daniella"]

func serve(customer customerProvider: () -> String){
    print("Now Serving \(customerProvider())!")
}
serve(customer: { customersInLine.remove(at: 0) } )

// customersInLine is ["Ewa", "Barry", "Daniella"]

// instead of taking an explicit closure,
// it takes an autoclosure by marking its parameter's type with the @autoclosure attribute.
// Now you can call the function as if it took a String argument instead of a closure.
// The argument is automatically converted to a closure, because the customerProvider parameter’s type is marked with the @autoclosure attribute.
func serve(customer customerProvider: @autoclosure () -> String){
    print("Now Serving \(customerProvider())!")
}

serve(customer: customersInLine.remove(at: 0))

// Overusing autoclosure make your code hard to understand.
// The context and function names should make it clear that evaluation is being deferred.


// If you want an autoclosure that is allowed to escape, use bothe the @autoclosure and @escaping attributes.

// customersInLine is ["Barry", "Daniella"]

var customerProviders: [() -> String] = []
func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
    customerProviders.append(customerProvider)
}

collectCustomerProviders(customersInLine.remove(at: 0))
collectCustomerProviders(customersInLine.remove(at: 0))

print("Collected \(customerProviders.count) closures.")
for customerProvider in customerProviders {
    print("Now serving \(customerProvider())!")
}
