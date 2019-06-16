import UIKit

//Given an array of integers, return indices of the two numbers such that they add up to a specific target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.

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

