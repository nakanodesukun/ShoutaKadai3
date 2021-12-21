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
              let secondNum = secondTextField.text.flatMap({Int($0)}) else { return resultLabel.text = nonValue }
        
        calculate(firstNum, secondNum)
        
    }
    
    
    func calculate(_ num1:  Int,_ num2: Int) {
        guard let firstNum = firstTextField.text.flatMap({Int($0)}),
              let secondNum = secondTextField.text.flatMap({Int($0)}) else { return resultLabel.text = nonValue }
        if firstSwitch.isOn == true {
            firstLabel.text = String(firstNum * (-1))
        } else {
            firstLabel.text = String(firstNum)
        }
        
        if secondSwitch.isOn == true {
            secondLabel.text = String(secondNum * (-1))
        } else {
            secondLabel.text = String(secondNum)
        }
        
        guard let firstValue = firstLabel.text.flatMap({Int($0)}),
              let secondValue = secondLabel.text.flatMap({Int($0)}) else { return resultLabel.text = nonValue }
        resultLabel.text = String(firstValue + secondValue)
    }
}
