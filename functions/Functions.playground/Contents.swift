//: Playground - noun: a place where people can play

import UIKit

//Passing parametter to function

func greetAgain(person: String ) ->String{
    return "Hello again " + person + "!"
}
func greet(person: String) -> String {
    return "Hello " + person
}
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    }
    else {
        return greet(person: person)
    }
}
print(greet(person: "Tim",alreadyGreeted:true))

// Ignore return value of function

func printAndCount(string: String) -> Int {
    print(string)
    return string.characters.count
}

func printWithoutCount(string: String) {
    let _ = printAndCount(string: string)
}

print(printAndCount(string: "Hello World"))
print(printWithoutCount(string: "Hello World"))

//return a tuple
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0];
    var currentMax = array[0];
    for value in array[1..<array.count] {
        if currentMin > value {
            currentMin = value
        }
        if(currentMax < value) {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
//let bounds = minMax(array: [1, 2, 3, 4, -8, -1, 10, 12, 15])


//Optional return value
func minMaxOption(array:[Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }
    return minMax(array: array)
}

if let bounds = minMaxOption(array: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

//Label for parametter
// Adding infomation for argument meaning
func labelParametter(person: String, from hometown: String) -> String{
    return "Hello \(person) glad you visit from \(hometown)"
}

print(labelParametter(person: "Bill", from: "Chicago"))

//Variadic parametter
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)

//In Out parametter
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var someInt = 3
var someOtherInt = 5
swapTwoInts(&someInt, &someOtherInt)

//function type
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(1 ,2))")

mathFunction = multiplyTwoInts
print("Result: \(mathFunction(1 ,2))")

let anotherMathFunction = addTwoInts
print("Result: \(anotherMathFunction(1 ,2))")

//use function type as parametter
func printMathResult(_ mathFunction:(Int,Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}

printMathResult(addTwoInts, 2, 3)
printMathResult(multiplyTwoInts, 2, 3)

//Use function type as return value

func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearToZero = chooseStepFunction(backward: currentValue > 0)
//let anotherWay = currentValue > 3 ? stepBackward : stepForward
print("Count to zero:")

while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearToZero(currentValue)
}

/*
 Nested function: function in a another function
 */

func nestedChooseStepFunction(_ backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int {
        return input + 1
    }
    func setpBackward(input: Int) -> Int {
        return input - 1
    }
    return backward ? stepBackward : stepForward
}

var value = -4
let moveToZero = nestedChooseStepFunction(value > 0)
print("Count to zero:")
while value != 0 {
    print("\(value)...")
    value = moveToZero(value)
}
print("Zero!")






