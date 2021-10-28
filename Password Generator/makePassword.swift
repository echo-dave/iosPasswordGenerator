//
//  makePassword.swift
//  Password Generator
//
//  Created by Dave M on 10/28/2021.
//

import Foundation
import UIKit
func randomize(useNumbers: UISwitch, useUppercase: UISwitch) -> String {

let length: Int = 25
var upperCaseCount: Int = Int.random(in: 3...(length / 2))
var numCount: Int = 5

var lowerCaseCount = length

let charsLowerCase: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

var charsUppercase: [String] = []
for chars in charsLowerCase {
    charsUppercase.append(chars.uppercased())
}

    var password: String = ""

    if useUppercase.isOn {
        lowerCaseCount -= upperCaseCount
        while upperCaseCount > 0 {
            password += charsUppercase.randomElement()!
            upperCaseCount -= 1
        }
        print("uppercase: \(password)")
    }
    if useNumbers.isOn {
        lowerCaseCount -= numCount
        while numCount > 0 {
            password += String(Int.random(in: 0...9))
            numCount -= 1
        }
        print("nums: \(password)")
    }
    var i = 0
    while i < lowerCaseCount {
        password += charsLowerCase.randomElement()!
        i += 1
    }
    
    let firstChar: String = String(password.removeFirst())
    let shuffled = password.shuffled()
    var concatenatedPassword: String = firstChar
    
    for char in shuffled {
     concatenatedPassword += String(char)
    }
    return concatenatedPassword
}

