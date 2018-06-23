//: Playground - noun: a place where people can play

import UIKit

func isPrimeNumberOrNot(_ number: Int) -> Bool{
    var prCheck = 1
    if number == 1{
        prCheck = 0
    }else if number == 2{
        prCheck = 1
    }else{
        // this will help in time complexity
        let limit = Int(sqrt(Double(number)))
        for index in 2...limit{
            if number%index == 0{
                prCheck = 0
                break
            }
        }
    }
    return prCheck == 1 ? true : false
}

print(isPrimeNumberOrNot(17))
