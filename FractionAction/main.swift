//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

//======================================================INPUT===========================================================\\
// Collect and filter user input here

// Make sure numerator is acceptable
var numerator = 0

while 1 == 1 {
    
    print("Numerator?")

    // Make sure input is not nil
    guard let givenInput = readLine() else {
        continue
    }
    
    // Make sure numerator is an integer
    guard let givenNumerator = Int(givenInput) else {
        continue
    }
    
    // Is the input between 1 and 32500
    if givenNumerator < 0 {
        continue
    }
    
    numerator = givenNumerator
    break
}

// Make sure denominator is acceptable
var denominator = 0

while 2 == 2 {
    
    print("Denominator?")
    
    // Make sure input is not nil
    guard let givenInput = readLine() else {
        continue
    }
    
    // Make sure denominator is an integer
    guard let givenDenominator = Int(givenInput) else {
        continue
    }
    
    // Is the input between 1 and 32500
    if givenDenominator < 1 {
        continue
    }
    
    denominator = givenDenominator
    break
}

//=====================================================PROCESS========================================================\\
// Implement the primary logic of the problem here

// Find Quotient and Remainder
var quotient = numerator / denominator
var remainder = numerator % denominator


// Normal Fraction
if remainder == 0 {
    print("The result is:")
    print("\(quotient)")
} else {
    // Find GCF
    //Loop backwards from halfway point
    var GCF = 1
    for possibleFactor in stride(from: remainder, through: 2, by: -1){
        
        if remainder % possibleFactor == 0 && denominator % possibleFactor == 0 {
            
            //now we know that "i" is the GCF
            GCF = possibleFactor
            break //stop the loop now that we have a match
        }
        
    }
    
    // Output reduced fraction
    if quotient == 0 {
        print("The result is:")
        print("\(remainder / GCF)/\(denominator / GCF)")
    } else {
        print("The result is:")
        print("\(quotient) \(remainder / GCF)/\(denominator / GCF)")
    }
}

