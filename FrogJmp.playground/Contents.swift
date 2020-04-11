import UIKit

func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {

    let diff = Y - X
    if (diff % D == 0) {
        return diff / D;
    } else {
        return diff / D + 1;
    }
}


solution(10, 150, 30)
