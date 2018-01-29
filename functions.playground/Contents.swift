//: Playground - noun: a place where people can play

import UIKit

// no parameters or return values
// averageQuizzes without parameters
let quiz1 = 85
let quiz2 = 86

func averageTwoQuizzes() {
    let average = Double(quiz1 + quiz2)/2
    print("the average of quiz1 and quiz2 is \(average)")
}

averageTwoQuizzes()

//TA's without parameters
print("")
var taList = ["Caroline", "Sazan", "Nick", "Will", "Kaitlin", "Angela"]

func listAllTAs() {
    for ta in taList {
        print(ta)
    }
}

listAllTAs()
print("")
//PARAMETERS
// average with parameters

func avgTheseTwoQuizzes(quiz1: Int, quiz2: Int) {
    let average = Double(quiz1 + quiz2) / 2
    print("the average of \(quiz1) and \(quiz2) is \(average)")
}

var johnQuiz1 = 92
var johnQuiz2 = 81


avgTheseTwoQuizzes(quiz1: quiz1, quiz2: quiz2)
avgTheseTwoQuizzes(quiz1: 79, quiz2: 94)
avgTheseTwoQuizzes(quiz1: johnQuiz1 + 5, quiz2: johnQuiz2 + 5)

var section1TAs = ["tina", "Amy", "leslie"]
var section2TAs = ["keenan", "colin", "michael"]
print("")
func listSectionTAs(names: [String]) {
    for name in names {
        print(name)
    }
}
listSectionTAs(names: section1TAs)
print("")
listSectionTAs(names: section2TAs)
print("")
listSectionTAs(names: taList)

print("")
func returnTwoNumberAverage (num1: Double, num2: Double) -> Double {
    return (num1 + num2) / 2
}

let myAvg = returnTwoNumberAverage(num1: 80.1, num2: 72.5)
print(myAvg)

var firstQuiz = 92.0
var secondQuiz = 87.0
let studentAvg = returnTwoNumberAverage(num1: firstQuiz, num2: secondQuiz)
print(studentAvg)



