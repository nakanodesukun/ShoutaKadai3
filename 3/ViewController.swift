//
//  ViewController.swift
//  3
//
//  Created by 中野翔太 on 2021/12/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var firstSwitch: UISwitch!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var secondSwitch: UISwitch!
    @IBOutlet private weak var firstLabel: UILabel!
    @IBOutlet private weak var secondLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    private let nonValue: String = "値を入力してください"
    
    @IBAction private func resultButton(_ sender: Any) {
        
        guard let firstNum = firstTextField.text.flatMap({Int($0)}),
              let secondNum = secondTextField.text.flatMap({Int($0)}) else {
                  resultLabel.text = nonValue
                  return
              }
        
        calculate(num1: firstNum, num2: secondNum)
    }
    
    
    func calculate(num1: Int, num2: Int) {
        let signedValue1: Int
        if firstSwitch.isOn {
            signedValue1 = -num1
        } else {
            signedValue1 = num1
        }
        firstLabel.text = String(signedValue1)

        let signedValue2: Int
        if secondSwitch.isOn {
            signedValue2 = -num2
        } else {
            signedValue2 = num2
        }
        secondLabel.text = String(signedValue2)

        resultLabel.text = String(signedValue1 + signedValue2)
    }
}
