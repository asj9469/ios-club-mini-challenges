import UIKit

// MINI CHALLENGE 1
var dogName: String? = nil
var catName: String? = "Dora"


// MINI CHALLENGE 2
//force unwrapping -> use !
var myHouse: String? = nil
var myTV: String? = "random"

let myTVUnwrapped: String = myTV!
let myHouseUnwrapped: String = myHouse!

//we got an error because we were force unwrapping the nil (myHouse)


// MINI CHALLENGE 3
//if let
var price: Int? = nil
var myFavFruit: String? = "Strawberry"

if let unwrappedPrice = price {
    print("This item's price is \(unwrappedPrice)")
} else {
    print("This item is not for sale!")
}

if let unwrappedFruit = myFavFruit, let unwrappedPrice = price {
    print("\(unwrappedFruit)'s price is \(unwrappedPrice)")
} else {
    print("Error!")
}

//guard else, guard let else


//MINI CHALLENGE 4
guard let unwrappedPrice2 = price else {
    print("Unavailble")
    fatalError()
}

print("This item's price is \(unwrappedPrice2)")

guard let unwrappedPrice3 = price, let unwrappedFruit2 = myFavFruit else{
    print("Unavailable")
    fatalError()
}

print("The \(unwrappedFruit2)'s price is \(unwrappedPrice3)")

let realPrice = price ?? 0
