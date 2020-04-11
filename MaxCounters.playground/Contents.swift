import UIKit

func solution(_ N: Int, _ A: [Int]) -> [Int] {
    
    var counters: [Int] = []
    for _ in 1...N {
        counters.append(0)
    }
    
    var maxCounter: Int = 0
    var lastResetCounter: Int = 0
    
    for i in 0..<A.count {
        if A[i] <= N {

            if counters[A[i]-1] < lastResetCounter {
                counters[A[i]-1] = lastResetCounter
            }
            
            counters[A[i]-1] += 1

            if counters[A[i]-1] > maxCounter {
                maxCounter = counters[A[i]-1]
            }

        } else {
            lastResetCounter = maxCounter
        }
    }

    for i in 0..<counters.count {
        if counters[i] < lastResetCounter {
           counters[i]  = lastResetCounter;
        }
    }
    
    return counters
}

solution(5, [3, 4, 4, 6, 1, 4, 4])
