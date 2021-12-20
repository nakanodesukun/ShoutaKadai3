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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBAction func resultButton(_ sender: Any) {
        let firstText = Int(firstTextField.text ?? "") ?? 0
        let secondText = Int(secondTextField.text ?? "") ?? 0
        let first = Int(firstLabel.text ?? "") ?? 0
        let second = Int(secondLabel.text ?? "") ?? 0
    
        if firstSwitch.isOn == true {
            firstLabel.text = "\(firstText * (-1))"
        } else {
            firstLabel.text = "\(firstText)"
        }
        if secondSwitch.isOn == true {
            secondLabel.text = "\(secondText * (-1))"
        } else {
            secondLabel.text = "\(secondText)"
        }
       
        
        resultLabel.text = "\(first + second)"
}
//    gurd文を使ってみよう

}
