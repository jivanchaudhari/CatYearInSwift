//
//  ViewController.swift
//  JCCatYear
//
//  Created by Mindrose on 23/05/17.
//  Copyright © 2017 Mindrose. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var textAge: UITextField!
    
    @IBOutlet var labelDisplay: UILabel!
    var ageInt:Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonCalculate(_ sender: UIButton) {
       
        let currentText: String = textAge.text!
       
        if  ((textAge.text?.isEmpty) != false) {
            self .alertAction(Title: "Text Empty", Massage: "Please Enter The Age.")
            
        } else {
            
            ageInt = Double(currentText)!
            
            if ageInt > 0 && ageInt < 100 {
                
                ageInt = ageInt / 7
                
              
                let newAgeInt = String(format: "Cat Year Age : %.2f", arguments: [ageInt])

                labelDisplay.text = newAgeInt
                print(newAgeInt)
                self.alertAction(Title: newAgeInt, Massage: "Cat Year Age")
           
            }else {
                
                labelDisplay.text = "Humman Age Is Lessthan 100"
                self .alertAction(Title: "Worng Value", Massage: "Humman Age Is Lessthan 100")
                
            }
        }
    
    
    }
    
    @IBAction func buttonClear(_ sender: UIButton) {
        labelDisplay.text! = " "
        textAge.text! = " "
        
    }
    
    func alertAction(Title:String,Massage:String) {
        
        let alert = UIAlertController(title: Title, message: Massage, preferredStyle: .alert)
        
        let okAction = UIAlertAction (title: "ok", style: .default) { (action:(UIAlertAction)) in
            
        }
        alert.addAction(okAction)

        present(alert, animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField .resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        self.view .endEditing(true)
    }
}

