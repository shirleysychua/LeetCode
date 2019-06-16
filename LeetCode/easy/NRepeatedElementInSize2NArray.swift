import UIKit

// In a array A of size 2N, there are N+1 unique elements, and exactly one of these elements is repeated N times.

Return the element repeated N times.
func repeatedNTimes(_ A: [Int]) -> Int {
    var parsed = Set<Int>()
    var answer : Int = 0
    for num in A {
        // since there are N+1 unique elements, once 1 duplicate is found, it should be the answer already
        if(parsed.contains(num)) {
            answer = num
        } else {
            parsed.insert(num)
        }
    }
    return answer
}

