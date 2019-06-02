import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    for index1 in 0..<nums.count {
        for index2 in index1+1..<nums.count {
            if(nums[index1] + nums[index2] == target) {
                return [index1, index2]
            }
        }
    }
    return []
}

