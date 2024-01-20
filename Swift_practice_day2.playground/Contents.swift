import UIKit

// Shopping Cart:
/// Develop a simple shopping cart system. Use arrays and dictionaries to represent items, their prices, and quantities. Implement functions to add items to the cart, calculate the total cost, and apply discounts.


struct Grocery {
    var nameAndQuantity: [String: Int]
    let price: Double
}

class ShoppingCart {
    var items: [Grocery] = []
    
    func addItemToCart(_ grocery: Grocery) {
        self.items.append(grocery)
    }
    
    func totalCost() -> Double {
        guard !items.isEmpty else {
            return 0.0
        }
        let sum = items.reduce(into: 0.0) { $0 += $1.price }
        return sum
    }
}

let apples = Grocery(nameAndQuantity: ["apple" : 4], price: 0.99)
let shoppingCart = ShoppingCart()
shoppingCart.addItemToCart(apples)


// Higher-order functions
/// map: transforms each elements of a sequence using a provided closure.

let numbers = [1, 2, 3, 4]
let squaredNumbers = numbers.map { $0 * $0 }

/// filter: returns a new array containing the elements of a sequence that satisfy a given condition.

let evenNumbers = numbers.filter { $0 % 4 == 0 }

/// compactMap: returns an array containing the non-nil results of calling a transformation function on each element.

let strings = ["1", "2", "3", "four", "5"]
let validNumbers = strings.compactMap { Int($0) }

print(validNumbers)

/// sorted: returns a new array containing the elements of a sequence, sorted according to the given closure.

let sortedNumbers = numbers.sorted { $0 > $1}

/// forEach: performs an operation on each element of a sequence.
let names = ["Alice", "Bob", "Charlie"]

names.forEach { print($0) }

/// enumerated: returns a sequence of pairs (index, element) for a given sequence.

for (index, element) in names.enumerated() {
    print("Index, \(index), ")
}

/// contains: returns a boolean value indicating whether a sequence contains a specific element.

let containsThree = numbers.contains { $0 == 3 }

/// first: returns the first element of a sequence that satisfies a given condition.

let firstEvenNumber = numbers.first { $0 % 2 == 0 }

/// reduce: combines elements of a sequence into a single value using a provided closure, with an initial result value.

let summation = numbers.reduce(into: 0) { $0 += $1 }
print(summation)
