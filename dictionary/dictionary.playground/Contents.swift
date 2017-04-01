//: Playground - noun: a place where people can play

import UIKit

var numbersOfIntegers = [Int: String]()
numbersOfIntegers[3] = "three"
numbersOfIntegers[3] = "fours"
print(numbersOfIntegers)

var airports = [String: String]()
airports["LA"] = "Losangeless"
airports["NB"] = "Noibai International Airport"

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportKey in airports.keys {
    print(airportKey)
}

for airportName in airports.values {
    print(airportName)
}