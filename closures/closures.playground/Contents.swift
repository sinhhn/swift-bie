//: Playground - noun: a place where people can play

import UIKit


//Normal expression
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1:String, _ s2: String) -> Bool {
    return s1 > s2
}
var reverseNames = names.sorted(by: backward)
print(reverseNames)

//Convert to closure
/*
 {(parametters) -> return type in
    statements
 }
 */

var reverseNamesByClosure = names.sorted(by: {(s1: String, s2: String) -> Bool in
    return s1 > s2})
print(reverseNamesByClosure)

let digitName = [
    0: "Zero", 1: "One", 2: "Two", 3:"Three", 4:"Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let number = [16, 58, 510]


