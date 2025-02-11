//
//  ViewController.swift
//  Calculator
//
//  Created by Christiawan Eko Saputro on 10/10/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblAsk: UILabel!
    @IBOutlet weak var lblHasil: UILabel!
    @IBOutlet weak var txtInputan1: UITextField!
    @IBOutlet weak var txtInputan2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func btnTambah(_ sender: Any) {
        perhitungan(operators: "+")
    }
    
    @IBAction func btnKurang(_ sender: Any) {
        perhitungan(operators: "-")
    }
    
    @IBAction func btnPerkalian(_ sender: Any) {
        perhitungan(operators: "x")
    }
    
    @IBAction func btnPembagian(_ sender: Any) {
        perhitungan(operators: "÷")
    }
    
    
    func perhitungan(operators:String) {
        
        if txtInputan1.text != "" && txtInputan2.text != "" {
            
            let inputan1 = Int(txtInputan1.text!)
            let inputan2 = Int(txtInputan2.text!)
            
            var result : Int?
            var opr : String?
            
            
            switch operators {
            case "+" :
                result = inputan1! + inputan2!
                opr    = "+"
            case "-" :
                result = inputan1! - inputan2!
                opr    = "-"
            case "x" :
                result = inputan1! * inputan2!
                opr    = "x"
            case "÷" :
                result = inputan1! / inputan2!
                opr    = "÷"
                
            default:
                break
            }
            
            lblHasil.text   = String(result!)
            lblAsk.text     = opr
            
            
        }else{
            showAlert(title: "Error", message: "Silahkan isi Inputan terlebih dahulu!")
        }
        
    }
    
    
    func showAlert(title : String, message : String)  {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let btnClose = UIAlertAction(title: "Close", style: .cancel, handler: nil)
        
        alert.addAction(btnClose)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
    
    
}

