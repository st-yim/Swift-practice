import UIKit

// Problem: Implement a Counter with Closure
/// Implement a Counter function that can be used to count the number of times a specific value has been passed to it. The Counter function should return a closure that maintains the count.


struct ImCounter<T: Hashable> {
    private var dictionary: [T:Int] = [:]
    
    mutating func counter() -> (T) -> Int {
        var capturedDictionary = self.dictionary
        
        var closure: (T) -> Int = { input in
            capturedDictionary[input, default: 0] += 1
            return capturedDictionary[input]!
        }
        return closure
    }
}

    
var counterA = ImCounter<Int>()
let counterFunctionA = counterA.counter()

print(counterFunctionA(1))  // Output: 1
print(counterFunctionA(2))  // Output: 1
print(counterFunctionA(1))  // Output: 2
