import UIKit

//Given a 32-bit signed integer, reverse digits of an integer.

func reverse(_ x: Int) -> Int {
    var xCopy : Int = x
    var reversedInt : Int = 0
    var count : Int = 0
    while(xCopy / 10 != 0 || xCopy % 10 != 0) {
        // shift digit of new Int to the left
        reversedInt *= 10
        // add last digit of original Int to new Int
        reversedInt += xCopy % 10
        xCopy /= 10
        count += 1
    }
    if(reversedInt > Int32.max || reversedInt < Int32.min) {
        reversedInt = 0
    }
    return reversedInt
}

