import UIKit

// Problem: Shape Protocols

/// Create a set of protocols for different shapes (e.g., circle, rectangle) and implement them in concrete classes. Each shape should be able to calculate its area.

/// Define a protocol Shape with a method calculateArea().

/// Create concrete classes Circle and Rectangle that conform to the Shape protocol.

/// Implement the calculateArea() method for both Circle and Rectangle. The formulas for area are:

/// Test your implementation by creating instances of Circle and Rectangle and calling the calculateArea() method.


protocol Shape {
    func calculateArea() -> Double
}

class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func calculateArea() -> Double {
        return Double.pi * radius * radius
    }
}

class Rectangle: Shape {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func calculateArea() -> Double {
        return width * height
    }
}

func calculateAreaOfShape(_ shape: Shape) -> Double {
    return shape.calculateArea()
}

var circle = Circle(radius: 21.2)
print(circle.calculateArea())
print(calculateAreaOfShape(circle))

var rectangle = Rectangle(width: 12.2, height: 10.1)
print(rectangle.calculateArea())
print(calculateAreaOfShape(rectangle))
