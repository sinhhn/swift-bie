//: Playground - noun: a place where people can play

import UIKit

class Verhicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    init() {
        print("I am the parrent")
    }
    func brake() {
        
    }
}

class Truck: Verhicle {
    override init() {
        super.init()
    }
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease
    }
}

class SportCar: Verhicle {
    override init() {
        super.init()
        print("I am the child")
        make = "BMW"
        model = "3 serie"
    }
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3
    }
}