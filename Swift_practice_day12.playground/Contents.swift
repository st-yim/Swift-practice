import UIKit

/// Traverse a matrix in diagonal order

class Solution {
    func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
        let m = mat.count
        let n = mat[0].count
        var diagonals = [Int]()
        
        // Traverse diagonals starting from the top-left corner
        for d in 0..<(m + n - 1) {
            for i in max(0, d - n + 1)..<min(d + 1, m) {
                diagonals.append(mat[i][d - i])
            }
        }
        
        return diagonals
    }
}

// Example usage:
let solution = Solution()
let matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
print(solution.findDiagonalOrder(matrix)) // Output: [1, 2, 4, 7, 5, 3, 6, 8, 9]


