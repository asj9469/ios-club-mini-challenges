import UIKit

//mini challenge 1
let myNum: Int = 5 //explicit declaration
var num: Int = 10 //implicit declaration
let aNum = 0 //explicit declaration

print(myNum)
print(num)
print(aNum)

//mini challenge 2
var myName: String = "Anson"
var myAge: Int = 19
var intro = "Hi, my name is \(myName), and I'm \(myAge)"

var friendName: String = "Alec"
var friendYear: String = "1st"
var friendsDay: String = "great"

var friendsIntro = "My friend is \(friendName), it's their \(friendYear) year at Tech, and his day was \(friendsDay)."

//mini challenge 3
var a = 5
var b = 3
var c = a + b

c += 10
print("c is now \(c)")

c *= 2
print("c is now \(c)")

c -= 7
print("c is now \(c)")

var d = c%2

//mini challenge 4
print(a>b ? a : b) //print larger value between a and b

//print the biggest value among a,b,c
if (a > b && a > c){
    print (a)
}else if (b > a && b > c){
    print (b)
}else{
    print (c)
}

print(a%2 == 0 ? "iOS Club" : "Unlucky") //print iOS club only if a is even

guard (a>b) else {
    print("Oops")
    fatalError()
}
