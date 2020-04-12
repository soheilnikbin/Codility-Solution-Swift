import UIKit

func solution(_ A: [Int]) -> Int {
    
    var sum1: Double = 0
    var sum2: Double = 0
    
    var minAverage: Double = Double.greatestFiniteMagnitude
    var average1: Double = Double.greatestFiniteMagnitude
    var average2: Double = Double.greatestFiniteMagnitude
    
    var minAverageSliceIndex: Int = 0
    
    for i in 0..<A.count - 2 {
        sum1 = Double(A[i] + A[i+1])
        average1 = sum1 / 2.0
        if average1 < minAverage {
            minAverage = average1
            minAverageSliceIndex = i
        }
        
        sum2 = sum1 + Double(A[i+2])
        average2 = sum2 / 3.0
        if average2 < minAverage {
            minAverage = average2;
            minAverageSliceIndex = i
        }
    }
    
    average1 = Double(A[A.count-2] + A[A.count-1]) / 2
    if(average1 < minAverage) {
      minAverage = average1;
      minAverageSliceIndex = A.count-2;
    }
    
    return minAverageSliceIndex
}

solution([4, 2, 2, 5, 1, 5, 8])
