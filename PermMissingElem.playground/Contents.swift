import UIKit

func solution(_ A: [Int]) -> Int {
    
    // Actual sum
    let n = A.count + 1
    let sum = n * (n + 1) / 2

    // Current sum
    let actualSum = A.reduce(0, +)
    
    return sum - actualSum
}

solution([2, 3, 1, 5])
