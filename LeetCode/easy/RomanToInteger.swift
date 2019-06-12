import UIKit

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

