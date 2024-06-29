//
//  CurrenyView.swift
//  CurrencyConverter
//
//  Created by Daisy Rong on 6/29/24.
//

import UIKit

class CurrencyView: UIViewController {

    @IBOutlet weak var USDAmountLabel: UILabel!
    
    @IBOutlet weak var EuroLabel: UILabel!
    @IBOutlet weak var EuroAmountLabel: UILabel!
    
    @IBOutlet weak var YenLabel: UILabel!
    @IBOutlet weak var YenAmountLabel: UILabel!
    
    @IBOutlet weak var CADLabel: UILabel!
    @IBOutlet weak var CADAmountLabel: UILabel!
    
    @IBOutlet weak var KronaLabel: UILabel!
    @IBOutlet weak var KronaAmountLabel: UILabel!
    
    var usdAmout = ""
    var eruoAmount = ""
    var yenAmount = ""
    var cadAmount = ""
    var kronaAmount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        USDAmountLabel.text = "Amount in USD $" + String(format: "%.2f", Double(usdAmout)!)
        EuroAmountLabel.text = eruoAmount
        YenAmountLabel.text = yenAmount
        CADAmountLabel.text = cadAmount
        KronaAmountLabel.text = kronaAmount
    }
    

    /*
    // MARK: - Navigation


    */

}
