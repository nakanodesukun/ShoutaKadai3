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
    
    
    @IBAction private func resultButton(_ sender: Any) {
        let firstText = Int(firstTextField.text ?? "") ?? 0
        let secondText = Int(secondTextField.text ?? "") ?? 0
        guard firstText != 0, secondText != 0 else { return resultLabel.text = "0以外を代入してくだいさい"
        }
        
        if firstSwitch.isOn, secondSwitch.isOn == true {
            firstLabel.text = "\(firstText * (-1))"
            secondLabel.text = "\(secondText * (-1))"
        } else {
            firstLabel.text = "\(firstText)"
            secondLabel.text = "\(secondText)"
        }

        let first = Int(firstLabel.text ?? "") ?? 0
        let second = Int(secondLabel.text ?? "") ?? 0
        
        resultLabel.text = "\(first + second)"
}


}
