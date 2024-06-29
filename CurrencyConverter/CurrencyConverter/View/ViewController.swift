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
    var usdAmout = ""
    var eruoAmount = ""
    var yenAmount = ""
    var cadAmount = ""
    var kronaAmount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ConvertCurrencyButton(_ sender: UIButton) {
        //check if input is valid
        if (converterLogic.checkInt(input: InputAmount.text ?? "error")) {
            ErrorLabel.text = ""
            usdAmout = InputAmount.text!
            if (SwitchOne.isOn) {
                eruoAmount = converterLogic.convertEuro(amount: usdAmout)
            }
            if (SwitchTwo.isOn) {
                yenAmount = converterLogic.convertYen(amount: usdAmout)
            }
            if (SwitchThree.isOn) {
                cadAmount = converterLogic.convertCAD(amount: usdAmout)
            }
            if (SwitchFour.isOn) {
                kronaAmount = converterLogic.convertKrona(amount: usdAmout)
            }
            
            self.performSegue(withIdentifier: "toCurrencyAmount", sender: self)
        }
        else {
            ErrorLabel.text = "Please enter a valid integer"
        }
        

    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let navigation = segue.destination as! CurrencyView
        navigation.eruoAmount = eruoAmount
        navigation.yenAmount = yenAmount
        navigation.cadAmount = cadAmount
        navigation.kronaAmount = kronaAmount
    }
    
}

