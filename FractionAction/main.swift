//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
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

// PROCESS
// Implement the primary logic of the problem here

// Find Quotient and Remainder
let quotient = numerator / denominator
let remainder = numerator % denominator

// Find GCF
var GCF = 0
// Loop backwards from halfway point of numerator
for i in stride(from: remainder / 2, through: 2, by: -1) {
    GCF = i
}

// Check result
// Whole number?
if remainder == 0 {
    print("The result is:")
    print(quotient)

// Negative Fraction?
} else if numerator < denominator {
    print("The result is:")
    print("")

// Normal Fraction
} else {
    print("The result is:")
    print("\(quotient) \(remainder / GCF)/\(denominator / GCF)")
}



// OUTPUT
// Report results to the user here

