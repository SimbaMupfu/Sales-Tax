//
//  ViewController.swift
//  Sales Tax
//
//  Created by Simbarashe Mupfururirwa on 2023/06/15.
//

import UIKit

class ViewController: UIViewController {
    
    var beforeTaxPrice: Float = 0
    var salesTaxRate: Float = 0

    @IBOutlet weak var afterTaxPrice: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func beforeTaxPriceChanged(_ sender: UITextField) {
        if let value = Float(sender.text!){
            beforeTaxPrice = value
        }else{
            beforeTaxPrice = 0
        }
    }
    
    @IBAction func salesTaxRateChanged(_ sender: UITextField) {
        if let value = Float(sender.text!){
            salesTaxRate = value
        }else{
            salesTaxRate = 0
        }
    }
    
    
    @IBAction func calculateNetPrice(_ sender: UIButton) {
        let salesTaxAmount: Float = beforeTaxPrice * (salesTaxRate / 100)
        let afterTaxPriceValue = beforeTaxPrice + salesTaxAmount
        afterTaxPrice.text = "\(afterTaxPriceValue)"
    }
}

