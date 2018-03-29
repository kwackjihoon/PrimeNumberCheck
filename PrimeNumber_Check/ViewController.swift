//
//  ViewController.swift
//  PrimeNumber_Check
//
//  Created by L703 on 2018. 3. 29..
//  Copyright © 2018년 L703. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtInput.delegate = self
    }
    @IBAction func btCheck(_ sender: Any) {
        
        let number = Int(txtInput.text!)
        var isPrime = true
        
        if  number == 1{
            isPrime = false
        }
        if number != 1 && number != 2{
            for i in 2..<number!{
                if number!%i == 0{
                    isPrime = false
                }
            }
        }
        if isPrime == true{
            lblResult.text = "소수입니다."
        }
        else{
            lblResult.text = "소수가 아닙니다."
        }
    }
    @IBAction func btResult(_ sender: Any) {
        txtInput.text = ""
        lblResult.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtInput.resignFirstResponder()
        view.endEditing(false)
        return true
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txtInput.resignFirstResponder()
        view.endEditing(false)
    }


}

