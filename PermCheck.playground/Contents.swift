import UIKit

func solution(_ A : [Int]) -> Int {
    
    var currentSet: Set<Int> = []
    var actualSet: Set<Int> = []
    
    for (index, value) in A.enumerated() {
        currentSet.insert(value)
        actualSet.insert(index+1)
    }

    if actualSet.isSubset(of: currentSet) {
        return 1
    }
    
    return 0
}

solution([1, 2, 3, 4, 5, 6, 7])
