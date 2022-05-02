//
//  MainVC.swift
//  window-shopper
//
//  Created by Vitalii Navrotskyi on 02.05.2022.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wegeTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    @IBOutlet weak var resultLB: UILabel!
    @IBOutlet weak var hoursLB: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.3321625888, blue: 0.139706552, alpha: 0.9230265715)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 255.0, green: 255.0, blue: 255.0, alpha: 1), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wegeTxt.inputAccessoryView = calcButton
        priceTxt.inputAccessoryView = calcButton
        
        resultLB.isHidden = true
        hoursLB.isHidden = true
        
    }
    
    @objc func calculate() {
        if let wageTxt = wegeTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLB.isHidden = false
                hoursLB.isHidden = false
                resultLB.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculator(_ sender: Any) {
        resultLB.isHidden = true
        hoursLB.isEnabled = true
        wegeTxt.text = ""
        priceTxt.text = ""
        
    }
    
}

