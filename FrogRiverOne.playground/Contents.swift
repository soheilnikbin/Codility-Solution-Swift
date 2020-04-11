import UIKit


func solution(_ X: Int, _ A: [Int]) -> Int {
    
    var requiredLeavesSet: Set<Int> = []
    var actualLeavesSet: Set<Int> = []
    
    for i in 1...X {
        requiredLeavesSet.insert(i)
    }
        
    for i in 0..<A.count {
        actualLeavesSet.insert(A[i])
        if actualLeavesSet.count < requiredLeavesSet.count { continue }

        if requiredLeavesSet.isSubset(of: actualLeavesSet) {
            return i
        }
    }
        
    return -1
}

solution(5, [1, 3, 1, 4, 2, 3, 5, 4])
