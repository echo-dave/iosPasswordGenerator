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

    override func viewDidLoad() {
        super.viewDidLoad()
//        useNumbers.setOn(true, animated: true)
//        print(useNumbers.isOn)
    }


//    @IBAction func useNumbersChange(_ sender: UISwitch) {
//        print(useNumbers.isOn)
//    }
    
    @IBAction func MakePassword(_ sender: UIButton) {
        
        let newPassword = randomize(useNumbers: useNumbers, useUppercase: useUppercase)
        
        print("new password: \(newPassword)")
        print("password length: \(newPassword.count)")
    }
}

