import UIKit

/// Challenge: Write a function in Swift that takes an optional string as input and returns the length of the string if it is not nil. If the string is nil, the function should return a default length of 0.

func lengthOfOptionalString(_ optionalString: String?) -> Int {
    // Check if the optionalString is not nil
    if let unwrappedString = optionalString {
        // Return the length of the unwrappedString
        return unwrappedString.count
    } else {
        // Return a default length of 0 if optionalString is nil
        return 0
    }
}

let string1: String? = "Swift is awesome!"
let length1 = lengthOfOptionalString(string1)
print("Length of string1: \(length1)")

let string2: String? = nil
let length2 = lengthOfOptionalString(string2)
print("Length of string2: \(length2)")


/// Challenge: Write a function in Swift that takes an array of optional integers as input and returns the sum of all the unwrapped integers. If any element in the array is nil, it should be ignored in the summation.

func sumOfUnwrappedIntegers(_ numbers: [Int?]) -> Int {
    var sum = 0
    // Iterate through the array
    for number in numbers {
        // Check if the number is not nil
        if let unwrappedNumber = number {
            // Add the unwrapped number to sum
            sum += unwrappedNumber
        }
    }
    // Return the sum of unwrapped integers
    return sum
}

let numbers1: [Int?] = [1, 2, 3, nil, 4, 5, nil]
let result1 = sumOfUnwrappedIntegers(numbers1)
print("The sum of unwrapped integers in numbers1 is: \(result1)")

let numbers2: [Int?] = [nil, nil, nil]
let result2 = sumOfUnwrappedIntegers(numbers2)
print("The sum of unwrapped integers in numbers2 is: \(result2)")

let numbers3: [Int?] = []
let result3 = sumOfUnwrappedIntegers(numbers3)
print("The sum of unwrapped integers in numbers3 is: \(result3)")

