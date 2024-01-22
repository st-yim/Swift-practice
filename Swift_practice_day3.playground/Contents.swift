import UIKit

// Coding Exercise: Filtering with Closures
// Problem Statement:
/// Write a function called filterArray that takes an array of integers and a closure as parameters. The function should use the closure to filter out the elements of the array based on a given condition.

/// Traverse backwards to modify original array
func filterArray(_ array: inout [Int], _ closure: (Int) -> Bool) {
    
    var index = array.count - 1
    while index >= 0 {
        let number = array[index]
        
        if !closure(number) {
            array.remove(at: index)
        }
        index -= 1
    }
}

var numbers = [1, 4, 6, 9, 22, 556, 789]
filterArray(&numbers) { integer in
    return integer % 2 == 0
}

print(numbers)

/// Make a copy of the passed-in array, modify it, and return it.
func filterArray2(_ array: [Int], _ closure: (Int) -> Bool) -> [Int] {
    
    // passed in copy of a variable array becomes a constant
    // make a mutable copy of it
    var newArray = array
    
    var index = newArray.count - 1
    while index >= 0 {
        let number = newArray[index]
        if !closure(number) {
            newArray.remove(at: index)
        }
        index -= 1
    }
    return newArray
}

var numbers2 = [1, 4, 56, 7 , 8 , 9, 0, 4, 134, 325, 221, 887]
print(filterArray2(numbers2) { integer in
    return integer % 3 == 0
})


/// Declare and initialize array of type Int and append values that are valid.
func filterArray3(_ array: [Int], closure: (Int) -> Bool) -> [Int] {
    var resultArray: [Int] = []
    for number in array {
        if closure(number) {
            resultArray.append(number)
        }
    }
    return resultArray
}

var numbers3 = [5, 6, 234, 68, 34, 79, 431, 33, 53, 790]
print(filterArray3(numbers3) { integer in
    return integer % 4 == 0
})

// Higher-order function, function returns a function

func multiplier(_ multiple: Int) -> (Int) -> Int {
    func multiplyBy(_ argument: Int) -> Int {
        return multiple * argument
    }
    return multiplyBy
}

let multiplierFunc = multiplier(3)
print(multiplierFunc(5))
