//
//  CoverterLogic.swift
//  CurrencyConverter
//
//  Created by Daisy Rong on 6/28/24.
//

import Foundation



struct ConverterLogic {
    func convertCAD(amount: String) -> String {
        let result = Double(amount)! * 1.37
        return String(format: "%.2f", result)
    }
    
    func convertYen(amount: String) -> String {
        let result = Double(amount)! * 160.88
        return String(format: "%.2f", result)
    }
    
    func convertEuro(amount: String) -> String {
        let result = Double(amount)! * 0.93
        return String(format: "%.2f", result)
    }
    
    func convertKrona(amount: String) -> String {
        let result = Double(amount)! * 10.61
        return String(format: "%.2f", result)
    }
    
    func checkInt(input: String) -> Bool {
        return Int(input) != nil
    }
}
