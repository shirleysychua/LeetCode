import UIKit

func threeSum(_ nums: [Int]) -> [[Int]] {
    var solution = Set<[Int]>()
    var sortedNums : [Int] = nums.sorted()
    for refIdx in 0..<sortedNums.count {
        var lowerIdx : Int = refIdx + 1
        var higherIdx : Int = sortedNums.count - 1
        while lowerIdx < higherIdx {
            // found
            if(sortedNums[lowerIdx] + sortedNums[higherIdx] == -sortedNums[refIdx]) {
                solution.insert([sortedNums[refIdx], sortedNums[lowerIdx], sortedNums[higherIdx]])
                // ignore same values before
                while lowerIdx < higherIdx && sortedNums[higherIdx] == sortedNums[higherIdx - 1] {
                    higherIdx -= 1
                }
                // ignore same values after
                while lowerIdx < higherIdx && sortedNums[lowerIdx] == sortedNums[lowerIdx + 1] {
                    lowerIdx += 1
                }
                lowerIdx += 1
                higherIdx -= 1
            }
                // already at highest possible sum, need to increase lower index
            else if(sortedNums[lowerIdx] + sortedNums[higherIdx] < -sortedNums[refIdx]) {
                lowerIdx += 1
            }
            else {
                higherIdx -= 1
            }
        }
    }
    return Array(solution)
}

