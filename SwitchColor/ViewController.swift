//
//  ViewController.swift
//  SwitchColor
//
//  Created by Abdullah AlRashoudi on 11/18/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelStatus: UILabel!
    
    @IBOutlet weak var main: UISwitch!
    @IBOutlet weak var green: UISwitch!
    @IBOutlet weak var blue: UISwitch!
    @IBOutlet weak var red: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // isEnabled --> means that we can open and close the switch , usually we dont need to use it as condtional statment we just assign to it a bool value
    
    // What we need is for example  red.isOn -> is the switch on or off
    
    
    @IBAction func switchStatus(_ sender: Any) {
       
        if main.isOn == true {

            red.setOn(false, animated: false)
            green.setOn(false, animated: false)
            blue.setOn(false, animated: false)

            blue.isEnabled = true
            red.isEnabled = true
            green.isEnabled = true
            
        }else{
            
            
            labelStatus.backgroundColor = .black
            
            red.setOn(false, animated: false)
            green.setOn(false, animated: false)
            blue.setOn(false, animated: false)
            
            blue.isEnabled = false
            red.isEnabled = false
            green.isEnabled = false
       
        }
        
    }
    @IBAction func switchRed(_ sender: Any) {
        
  
        if  red.isOn == true {
            labelStatus.backgroundColor = .red
            green.setOn(false, animated: false)
            blue.setOn(false, animated: false)
        }else{
            labelStatus.backgroundColor = .black
        }
    
        
        
        
    }
    @IBAction func switchBlue(_ sender: Any) {
       
        if  blue.isOn == true {
            labelStatus.backgroundColor = .blue
            red.setOn(false, animated: false)
            green.setOn(false, animated: false)
        }else{
            labelStatus.backgroundColor = .black
        }
               
    }
    @IBAction func switchGreen(_ sender: Any) {
        
        
        if green.isOn == true {
            labelStatus.backgroundColor = .green
            red.setOn(false, animated: false)
            blue.setOn(false, animated: false)
        }else{
            labelStatus.backgroundColor = .black
        }
        
     
    }
    
}

