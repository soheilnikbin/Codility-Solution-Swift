import UIKit

func solution(_ A : [Int]) -> Int {
    
    var sumright: Int = 0
    var sumleft: Int = 0
    var ans: Int = 0
    
    for i in 1...A.count-1 {
         sumright += A[i]
    }
    
    sumleft = A[0]
    ans = abs(sumleft - sumright)

    
    for P in 1...A.count-1 {

        if abs(sumleft - sumright) < ans {
            ans = abs(sumleft -  sumright)
        }
        sumleft += A[P]
        sumright -= A[P]
    }
    
    return ans
}

solution([3, 1, 2, 4, 3])
