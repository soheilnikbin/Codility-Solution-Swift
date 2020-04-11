import UIKit

func solution(_ S: String, _ P: [Int], _ Q: [Int]) -> [Int] {
    
    let N = S.count
    let M = P.count
    
    var answer: [Int] = Array(repeating: 0, count: M)
    
    var a: [Int] = Array(repeating: 0, count: N+1)
    var c: [Int] = Array(repeating: 0, count: N+1)
    var g: [Int] = Array(repeating: 0, count: N+1)
    var t: [Int] = Array(repeating: 0, count: N+1)

    let s: [Character] = Array(S)
    
    for i in 0..<N {
        switch s[i] {
        case "A": a[i + 1] = 1
        case "C": c[i + 1] = 1
        case "G": g[i + 1] = 1
        case "T": t[i + 1] = 1
        default: break
        }
    }

    for i in 1...N {
        a[i] += a[i - 1]
        c[i] += c[i - 1]
        g[i] += g[i - 1]
        t[i] += t[i - 1]
    }
    
    for i in 0..<M {
        if (a[Q[i] + 1] - a[P[i]]) != 0 {
            answer[i] = 1
        } else if (c[Q[i] + 1] - c[P[i]]) != 0 {
            answer[i] = 2
        } else if (g[Q[i] + 1] - g[P[i]]) != 0 {
            answer[i] = 3
        } else if (t[Q[i] + 1] - t[P[i]]) != 0 {
            answer[i] = 4
        }
    }
    
    return answer
}

//solution("CAGCCTA", [2, 5, 0], [4, 5, 6])
solution("AC", [0, 0, 1], [0, 1, 1])

//A = 1
//C = 2
//G = 3
//T = 4

// 2 --- 4
// 5 --- 5
// 0 --- 6

//[0, 1, 0, 0] [0, 1, 0, 0]
//[1, 0, 0, 0] [1, 1, 0, 0]
//[0, 0, 1, 0] [1, 1, 1, 0]
//[0, 1, 0, 0] [1, 2, 1, 0]
//[0, 1, 0, 0] [1, 3, 1, 0]
//[0, 0, 0, 1] [1, 3, 1, 1]
//[1, 0, 0, 0] [2, 3, 1, 1]

