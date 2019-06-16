import UIKit

//Given an array of integers, return indices of the two numbers such that they add up to a specific target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map = [Int:Int]()
    
    for index in 0..<nums.count {
        let diff: Int = target - nums[index]
        if(map[nums[index]] == nil) {
            // store difference as key so we can easily check later if this difference is found in succeeding indices
            map[diff] = index
        } else {
            return [map[nums[index]]!, index]
        }
    }
    
    return []
}

