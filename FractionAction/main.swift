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
let quotient = numerator / denominator
let remainder = numerator % denominator

// Find GCF

var secondNumerator = 0
var secondDenominator = 0
var gcf = 0

// Start at half of denominator and go backwards
for i in stride(from: denominator/2, through: 2, by: -1) {
        
    if (numerator % denominator) % i == 0 && denominator % i == 0 {
            
        // If common factor is found, reduce the fraction
        secondNumerator = (numerator % denominator) / i
        secondDenominator = denominator / i
    } else {
        continue
    }
}

while numerator % 2 == 0 && denominator % 2 == 0 {
    numerator = numerator/2
    denominator = denominator/2
    continue
}
print("The result is")
print("\(numerator)/\(denominator)")

// Check result
// Whole number?
if remainder == 0 {
    print("The result is:")
    print(quotient)

// Answer less than 1?
//} else if quotient == 0 {
//        var secondNumerator = 0
//        var secondDenominator = 0
//
//        // starting from the helf way point of the denominator and going down check for common factors.
//        for i in stride(from: denominator/2, through: 2, by: -1) {
//
//            // if a common farctor is found, reduce the fraction and end the program
//            if numerator % i == 0 && denominator % i == 0 {
//                secondNumerator = numerator / i
//                secondDenominator = denominator / i
//                print("The result is: \n\(secondNumerator)/\(secondDenominator)")
//            }
//
//        }
    
// Normal Fraction
} else {
    print("The result is:")
    print("\(quotient) \(remainder / gcf)/\(denominator / gcf)")
}



// OUTPUT
// Report results to the user here

while numerator % 2 == 0 && denominator % 2 == 0 {
        numerator = numerator/2
        denominator = denominator/2
    }
