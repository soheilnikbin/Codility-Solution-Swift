import UIKit

func solution(_ N : Int) -> Int {
    
    let binary = String(N, radix: 2)
    let arr = Array(binary)
    var counterOne = 2
    var counterZero = 0
    var currentGap = 0
    
    for char in arr {
        let i = Int(String(char))
        if i == 1 { counterOne += 1 }
        if i == 0 { counterZero += 1 }
        if counterOne % 2 == 0 {
            if currentGap == 0 {
                currentGap = counterZero
            } else if counterZero > currentGap {
                currentGap = counterZero
            }
            counterZero = 0
            counterOne -= 1
        }
    }
    
    return currentGap
}


solution(328)
