import UIKit

// Challenge: Calculator with Closures

/// Create a simple calculator function called calculate that takes two numbers and a closure as parameters. The closure should represent a mathematical operation (e.g., addition, subtraction, multiplication, division). The function should apply the closure to the two numbers and return the result.

var addition: (_ num1: Double, _ num2: Double) -> Double = { num1, num2 in
    return num1+num2
}

var subtraction: (_ num1: Double, _ num2: Double) -> Double = { num1, num2 in
    return num1-num2
}

var multiplication: (_ num1: Double, _ num2: Double) -> Double = { num1, num2 in
    return num1*num2
}

var division: (_ num1: Double, _ num2: Double) -> Double = { num1, num2 in
    return num1/num2
}

func calculate(_ num1: Double, _ num2: Double, _ operation: (Double, Double) -> Double) -> Double {
    return operation(num1, num2)
}


// Challenge: Custom Operation Combiner

/// Create a function called combineOperations that takes two numbers, an array of closures representing operations, and a closure to combine the results. The function should apply each operation to the two numbers and then use the combining closure to merge the results.

func combineOperations(_ num1: Double, _ num2: Double, operations: [(Double, Double) -> Double], combine: (Double, Double) -> Double) -> Double {
    
    var intermediateResults = [Double]()
    
    for operation in operations {
        let result = operation(num1, num2)
        intermediateResults.append(result)
    }
    
    let finalResult = intermediateResults.reduce(0, combine)

    return finalResult
}
