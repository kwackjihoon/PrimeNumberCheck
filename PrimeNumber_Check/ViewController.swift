//
//  ViewController.swift
//  PrimeNumber_Check
//
//  Created by L703 on 2018. 3. 29..
//  Copyright © 2018년 L703. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var txt: UITextField!
    @IBOutlet weak var labs: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txt.delegate=self
    }
    @IBAction func chk(_ sender: Any) {
        let number = Int(txt.text!)
        var prime = true
        if  number == 1{
            prime = false
        }
        if number != 1 && number != 2{
            for i in 2..<number!{
                if number!%i == 0{
                    prime = false
                }
            }
        }
        if prime == true{
            labs.text = "소수입니다."
        }
        else{
            labs.text = "소수가 아닙니다."
        }
    }

    @IBAction func rst(_ sender: Any) {
        txt.text=""
        labs.text=""
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txt.resignFirstResponder()
        view.endEditing(false)
        return true
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txt.resignFirstResponder()
        view.endEditing(false)
    }


}

