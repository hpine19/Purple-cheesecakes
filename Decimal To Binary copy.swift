//
//  main.swift
//  DecimalToBinary
//
//  Created by Hypatia Pine on 1/13/16.
//  Copyright © 2016 Hypatia Pine. All rights reserved.
//

import Foundation

    print("Welcome! This is a decimal to binary converter! This converter lets you put in any odd or even number and will convert it to binary. Let's try it out! Enter a number greater than 0.")   //greets the user, tell user what this 'app' is made for

var number : Int? = Int(getln())    //reads users input, pauses and checks

while (number == nil || number < 0 || number == 0) {    //checks for an applicable number
    print("Sorry, you can only type in numbers that are greater than 0.")   //re-prompts the user
    var tryagain : Int? = Int(getln())
    number = tryagain   //lets the user try again
    }

//var number =

var bstring = ""    //binary string
var originalnumber = String(number!)    //varibale for users original number so the computer doesn't get confused

while number > 0 {  //checks if number is even or odd
                    //if the decimal number is even, the far right number will be 0
                    //if the decimal number is odd, the far right number will be 1
    
    //number%2 == 0
    //number%2 == 1
    
    bstring = String(number!%2) + bstring   //checks to see if number is divisible by 2, puts in 1 or 0 depending on that
    number = number!/2

    //TODO:
    
    } //end of loop

print("The binary number for \(originalnumber) is \(bstring).") //tells the user the binary number

    