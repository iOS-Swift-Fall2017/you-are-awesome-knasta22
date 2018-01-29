//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myInt = 30000

var myDouble = 30.00

var myBool = true
myBool = "John" == "john"

var myWeight: Int = 170
var percentGoal: Double = 0.1
var weightToLose = Double(myWeight) * percentGoal
print(weightToLose)

var weightMessage = "My weight is currently: " + String(myWeight)

let messages = ["You are great!", "You are fantastic!", "fabulous? that's you!"]

var UInt = arc4random_uniform(5)
var randomIndex = arc4random_uniform(UInt32(messages.count))
messages[Int(randomIndex)]
