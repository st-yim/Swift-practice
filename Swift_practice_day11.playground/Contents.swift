import UIKit

/// You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise). You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        // Transpose matrix
        for i in 0..<matrix.count {
            for j in i+1..<matrix[0].count {
                (matrix[i][j], matrix[j][i]) = (matrix[j][i], matrix[i][j])
            }
        }
        
        // Reverse rows
        for i in 0..<matrix.count {
            var start = 0
            var end = matrix[i].count - 1
            while start < end {
                (matrix[i][start], matrix[i][end]) = (matrix[i][end], matrix[i][start])
                start += 1
                end -= 1
            }
        }
    }
}

// Example usage:
var matrix: [[Int]] = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

let solution = Solution()
solution.rotate(&matrix)
print(matrix)

