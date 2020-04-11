import UIKit

func solution(_ A: [Int]) -> Int {
    
    let sorted: [Int] = A.sorted()
    var counter: Int = 0
    
    for i in 0..<sorted.count {
        let currentNode: Int = sorted[i + counter]
        if !sorted.indices.contains(i+(counter + 1)) { return currentNode }
        let nextNode: Int = sorted[i+(counter + 1)]
        
        if currentNode != nextNode {
            if !sorted.indices.contains(i+(counter + 2)) { continue }
            let nextNextNode: Int = sorted[i+(counter + 2)]
            if nextNode == nextNextNode {
                return currentNode
            }
        }
        counter += 1
    }
    
    return 0
}

let arr: [Int] = [9, 3, 9, 3, 9, 7, 9, 7, 8, 8, 10]
solution(arr)
