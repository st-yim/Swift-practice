import UIKit

/// Spiral Matrix: Given an m x n matrix, return all elements of the matrix in spiral order.

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        guard !matrix.isEmpty else {
            return []
        }
        
        var ans = [Int]()
        let row = matrix.count
        let col = matrix[0].count
        var top = 0, right = col - 1, bottom = row - 1, left = 0

        while top <= bottom && left <= right {
            // Top
            for i in left...right {
                ans.append(matrix[top][i])
            }
            top += 1

            // Right
            for i in top...bottom {
                ans.append(matrix[i][right])
            }
            right -= 1

            // Bottom
            if top <= bottom {
                for i in (left...right).reversed() {
                    ans.append(matrix[bottom][i])
                }
            }
            bottom -= 1

            // Left
            if left <= right {
                for i in (top...bottom).reversed() {
                    ans.append(matrix[i][left])
                }
            }
            left += 1
        }
        
        return ans
    }
}

// Example usage:
let solution = Solution()
let matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
let result = solution.spiralOrder(matrix)
print(result) // Output: [1, 2, 3, 6, 9, 8, 7, 4, 5]


/// Spiral Matrix II: Given a positive integer n, generate an n x n matrix filled with elements from 1 to n2 in spiral order.

class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)
        var top = 0, bottom = n - 1, left = 0, right = n - 1
        var num = 1
        
        while top <= bottom && left <= right {
            // Traverse right
            for j in left...right {
                matrix[top][j] = num
                num += 1
            }
            top += 1
            
            // Traverse down
            for i in top...bottom {
                matrix[i][right] = num
                num += 1
            }
            right -= 1
            
            // Traverse left
            for j in (left...right).reversed() {
                matrix[bottom][j] = num
                num += 1
            }
            bottom -= 1
            
            // Traverse up
            for i in (top...bottom).reversed() {
                matrix[i][left] = num
                num += 1
            }
            left += 1
        }
        
        return matrix
    }
}

// Example usage:
let solution = Solution()
let n = 3
let spiralMatrix = solution.generateMatrix(n)
for row in spiralMatrix {
    print(row)
}


