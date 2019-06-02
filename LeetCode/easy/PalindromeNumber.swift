import UIKit

func isPalindrome(_ x: Int) -> Bool {
    var xCopy : Int = x
    var reversedInt : Int = 0
    if (xCopy < 0 || (xCopy%10 == 0 && xCopy != 0)) {
        return false
    }
    // to parse only half of the Int
    while (xCopy > reversedInt) {
        reversedInt = reversedInt * 10 + xCopy % 10
        xCopy /= 10
    }
    
    // second condition is for odd-digit number
    return reversedInt==xCopy || xCopy == reversedInt/10
}

