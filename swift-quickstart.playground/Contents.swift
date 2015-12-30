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

//
// Classes and Methods

class TipCalcuator {    // Subclassing: Foo: SuperBar, SuperFooBar, ...
    
    let total: Double
    let taxPct: Double
    let subtotal: Double // all properties need initial value here or init method, otherwise: Error!
    
    // here comes the initializer - you can have 1+ but different signature
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    func calcTipWithTipPct(tipPct: Double) -> Double { // -> Double indicates what is returned
        return subtotal * tipPct
    }
    
    func printPossibleTips() {
        print("15%: \(calcTipWithTipPct(0.15))")
        print("18%: \(calcTipWithTipPct(0.18))")
        print("20%: \(calcTipWithTipPct(0.20))")    // when call method, first parameter can be unnamed, 2nd+ have to be named
    }
    
}

let tipCalc = TipCalcuator(total: 33.25, taxPct: 0.06)
tipCalc.printPossibleTips()
