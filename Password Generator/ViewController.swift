//
//  ViewController.swift
//  Password Generator
//
//  Created by Dave M on 10/28/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var useUppercase: UISwitch!
    @IBOutlet weak var useNumbers: UISwitch!
    @IBOutlet weak var passwordLengthValue: UILabel!
    @IBOutlet weak var passwordLength: UISlider!
    @IBOutlet weak var passworedOutput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        useNumbers.setOn(true, animated: true)
//        print(useNumbers.isOn)
//        passwordLength.isContinuous = false
//        passworedOutput.isEnabled = false
        passworedOutput.allowsEditingTextAttributes = false
    }


//    @IBAction func useNumbersChange(_ sender: UISwitch) {
//        print(useNumbers.isOn)
//    }
    
    @IBAction func passwrodLengthChange(_ sender: UISlider) {
        passwordLength.value = round(passwordLength.value)
        print(passwordLength.value)
        passwordLengthValue.text = String(Int(passwordLength.value))
    }
    
    @IBAction func MakePassword(_ sender: UIButton) {
        
        let newPassword = randomize(useNumbers: useNumbers, useUppercase: useUppercase, length: Int(passwordLength.value))
        
        print("new password: \(newPassword)")
        print("password length: \(newPassword.count)")
        passworedOutput.text = newPassword
        
    }
    
    
    @IBAction func copyPassword(_ sender: UITextField) {
        passworedOutput.isEnabled = true
        let pasteboard = UIPasteboard.general
        pasteboard.string = passworedOutput.text
        print("copied password")
        passworedOutput.isEnabled = false
        
        //        let pasteBoard = NSPasteboard.generalPasteboard()
//        pasteBoard.clearContents()
//        pasteBoard.setString("my string", forType: NSStringPboardType)
    }
}

