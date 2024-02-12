import Foundation


//MINI CHALLENGE 1

func sayHello() {
    print("Hello!")
}

//should not store sayHello() because it will store the output
// (()->()) is the same as ((Void) -> (Void))
var greet: (()->()) = sayHello

greet
greet()

let sayHelloClosure = {
    print("Hello there!")
    return "hi"
}

// if you don't add the (), it returns the type of the function
// if you add the (), you're calling for the output for it -> actually prints out stuff & returns stuff
sayHelloClosure
sayHelloClosure()


//MINI CHALLENGE 2

let sayHelloClosureWithParameter = { (str: String)->(Void) in
    print("Hello there, \(str)")
}

sayHelloClosureWithParameter("Leo")

let sayhelloClosureWithParameterAndRet = {(name: String) -> (String) in
    
    return "Hello there, \(name)"
}

sayhelloClosureWithParameterAndRet("Alec")

func mySeatingArrangement (neighbors: (([String])->())){
    
    neighbors(["Leo", "Alec"])
}

mySeatingArrangement(neighbors: { (names: [String]) -> () in
    //using map
    print("I sit next to", names.map{$0}.joined(separator: " and "))
    
    //OR use a for loop
    var output: String = "I sit next to "
    for name in names{
        output.append(name)
        if (name != names[names.count - 1]){
            output.append(" and ")
        }else{
            output.append(".")
        }
    }
    
    print(output)
})

//MINI CHALLENGE 3
let range = 0..<30

var fibonacciSequence = range.map({(number: Int) -> Int in
    
    var first = 0
    var second = 1
    
    for _ in 0..<number {
        let prev = first
        first = second
        second = prev + first
    }
    
    return first
})

print(fibonacciSequence)
