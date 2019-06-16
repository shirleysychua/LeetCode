import UIKit

//Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
//
//Symbol       Value
//I             1
//V             5
//X             10
//L             50
//C             100
//D             500
//M             1000
//For example, two is written as II in Roman numeral, just two one's added together. Twelve is written as, XII, which is simply X + II. The number twenty seven is written as XXVII, which is XX + V + II.
//
//Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
//
//I can be placed before V (5) and X (10) to make 4 and 9.
//X can be placed before L (50) and C (100) to make 40 and 90.
//C can be placed before D (500) and M (1000) to make 400 and 900.
//Given a roman numeral, convert it to an integer. Input is guaranteed to be within the range from 1 to 3999.


func romanToInt(_ s: String) -> Int {
    let lut : [Character:Int] = ["I": 1,
                                 "V": 5,
                                 "X": 10,
                                 "L": 50,
                                 "C": 100,
                                 "D": 500,
                                 "M": 1000]
    var int: Int = 0
    for charIndex in s.indices {
        var equivalent : Int = lut[s[charIndex]]!
        var nextIndex = s.index(after: charIndex)
        // if char in next index has greater value than current, subtract instead
        switch(s[charIndex]) {
        case "I":
            if(nextIndex < s.endIndex && (s[nextIndex] == "V" || s[nextIndex] == "X")) {
                equivalent = -equivalent
            }
            break
        case "X":
            if(nextIndex < s.endIndex && (s[nextIndex] == "L" || s[nextIndex] == "C")) {
                equivalent = -equivalent
            }
            break
        case "C":
            if(nextIndex < s.endIndex && (s[nextIndex] == "D" || s[nextIndex] == "M")) {
                equivalent = -equivalent
            }
            break
        default:
            break
        }
        int +=  equivalent
    }
    return int
}

