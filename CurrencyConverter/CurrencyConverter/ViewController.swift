//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Daisy Rong on 6/28/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputAmount: UITextField!
    
    @IBOutlet weak var SwitchOne: UISwitch!
    
    @IBOutlet weak var SwitchTwo: UISwitch!
    
    @IBOutlet weak var SwitchThree: UISwitch!
    
    @IBOutlet weak var SwitchFour: UISwitch!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    var converterLogic = ConverterLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ConvertCurrencyButton(_ sender: UIButton) {
        //check if input is valid
        if (InputAmount.text == "") {
            ErrorLabel.text = ""
            converterLogic.convertCurrency(amount: 44.4, convertOne: SwitchOne.isOn, convertTwo: SwitchTwo.isOn, convertThree: SwitchOne.isOn, convertFour: SwitchOne.isOn)
        }
        else {
            ErrorLabel.text = "Please enter a valid integer"
        }

    }
    
}

