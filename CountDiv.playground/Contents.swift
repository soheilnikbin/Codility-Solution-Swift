import UIKit


func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
    
    let inclusive = ((A%K)==0) ? 1 : 0
    return (B/K) - (A/K) + inclusive
}

solution(6, 18, 2)

for i in 6...18 {
    if i % 2 == 0 {
        print(i)
    }
}
