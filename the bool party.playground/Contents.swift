//: Playground - noun: a place where people can play

import UIKit

var isOn = true

if isOn == true {
    print("oh it's on!")
} else {
    print("...all bets are off...")
}

if isOn {
    print("oh it's on!")
} else {
    print("...all bets are off...")
}

if isOn != false {
    print("oh it's on!")
} else {
    print("...all bets are off...")
}
print(" ")

isOn = false

if isOn == false {
    print("...all bets are off...")
} else {
    print("oh its on!")
}

if isOn != true {
    print("...all bets are off...")
} else {
    print("oh its on!")
}

if !isOn {
    print("...all bets are off...")
} else {
    print("oh its on!")
}

var loggedOn = false
var validUserID = false
var validPassword = false

if validUserID && validPassword {
    print ("you are logged in")
} else {
    print("invalid login")
}

let name = "danerys"
var chilfOfTheKing = true
var isMale = false
var livingMaleSiblings = 0
var livingOlderSiblings = 0
var livingOffspringOfKingsSon = 0

