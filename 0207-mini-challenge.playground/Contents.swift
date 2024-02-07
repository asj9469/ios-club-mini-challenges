import Foundation

func sayHello() {
    print("Hello!")
}

//should not store sayHello() because it will store the output
// (()->()) is the same as ((Void) -> (Void))
var greet: (()->()) = sayHello

greet
greet()

let sayHelloClosure = { print("Hello there!") }

sayHelloClosure
sayHelloClosure()
