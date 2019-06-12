import UIKit

func removeOuterParentheses(_ S: String) -> String {
    let OPEN_PAR : Character = "("
    let CLOSE_PAR : Character = ")"
    var iCount : Int = 0
    var sResult : String = ""
    
    // iCount = 0 either indicates all parentheses match
    for c in S {
        if (c == OPEN_PAR) {
            if(iCount > 0) {
                sResult.append(c)
            }
            iCount += 1
        } else if (c == CLOSE_PAR) {
            iCount -= 1
            if(iCount > 0) {
                sResult.append(c)
            }
        }
    }
    
    return sResult
}

