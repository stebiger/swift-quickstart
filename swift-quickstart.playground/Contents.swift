//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//
// Constants and Variables
let swiftTeam = 13
let IOSTeam = 54
let otherTeams = 48
//let totalTeam = swiftTeam + IOSTeam + otherTeams
//print(totalTeam)
//totalTeam += 1  // produce error on constant (= let ..)

// variable is mutable
// let constant is immutable
var totalTeam = swiftTeam + IOSTeam + otherTeams
print(totalTeam)
totalTeam += 1

// let is best practice as immutable variables can be optimized by the compiler

//
// Typed vs. Inferred
let intSwiftTeam: Int = 13 // typed constant, but inferred typing is more concise in swift (yes it its!)


//
// Basic Types and Control Flow in Swift
let priceInferred = 19.99   // is a Float
let priceExplicit: Double = 19.99 // is a Double cause :Double

let onSaleInferred = true
let onSaleExplicit: Bool = false

let nameInferred = "Foo"
let nameExplicit: String = "FooBar"

if onSaleInferred { // parentheses are optional (yeah!) braces required for 1-liner (yeah!)
    print("\(nameInferred) on sale for \(priceInferred)!")  // \(expression) string interpolation!
}
else {
    print("\(nameInferred) at regular price: \(priceInferred)!")
}

