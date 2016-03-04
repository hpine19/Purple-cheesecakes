//
//  main.swift
//  PrimeOrComposite
//
//  Created by Hypatia Pine on 1/20/16.
//  Copyright © 2016 Hypatia Pine. All rights reserved.
//

import Foundation

print("Need help finding out if a number is prime or composite? Well you've come to the right place! Enter in any positive interger greater than 1.")

//TODO: //prompt for positive interger that is greater than 1

        //**highest number that needs to be checked is the squareroot of the original number

var number : Int? = Int(getln()) //allows the user to type in response
while (number == nil || number < 2) {   //reads if users response is acceptable
    print ("Sorry, this is not an acceptable number. Please put in a positive number that is greater than 1.")
    var tryagain : Int? = Int(getln())
    number = tryagain 
}

let throwAway : Double
throwAway = Double(number!)
var divisor = 2.0
var pc = "prime"

while divisor <= sqrt(throwAway) {
    if (throwAway%divisor) == 0 {
        pc = "This number is composite."  // prints out if number is prime or composite
        break
    }
    divisor = divisor + 1
}

print("This number is \(pc).")

//while number > 1 {
    //number!%2 == 0
    //number!%3 == 0
    //number!%5 == 0
    //number!%7 == 0
    //number!%9 == 0

//}