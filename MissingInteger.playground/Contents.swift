import UIKit

func solution(_ A: [Int]) -> Int {
    
    var actualSet: Set<Int> = []
    var perfectSet: Set<Int> = []
    
    for (index, value) in A.enumerated() {
        actualSet.insert(value)
        perfectSet.insert(index+1)
    }
    
    let sortedPerfectSet = perfectSet.sorted()
    
    for value in sortedPerfectSet {
        if !actualSet.contains(value) {
            return value
        }
    }

    if actualSet.count == sortedPerfectSet.count {
        return sortedPerfectSet.count + 1
    }

    return 1
}

solution( [-1, -3])
