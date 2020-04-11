import UIKit

func solution(_ A: [Int], _ K: Int) -> [Int] {
        
    if K == 0 { return A }

    var count = 0
    var newArr: [Int] = []
    
    while count < K {
        count += 1
        if newArr.isEmpty {
           newArr = rotate(arr: A)
        } else {
            newArr = rotate(arr: newArr)
        }
    }
    return newArr
}

func rotate(arr: [Int]) -> [Int] {
    var currentArrr: [Int] = arr
    var newArr: [Int] = []
    
    guard let last = currentArrr.last else { return currentArrr }
    newArr.append(last)
    currentArrr.removeLast()
    newArr.append(contentsOf: currentArrr)
    return newArr
}

solution([4, 3, 2], 0)
