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

    @IBAction func switchStatus(_ sender: Any) {
       
        if main.isEnabled == true {

            red.setOn(false, animated: false)
            green.setOn(false, animated: false)
            blue.setOn(false, animated: false)

            blue.isEnabled = true
            red.isEnabled = true
            green.isEnabled = true
        }else{
            red.setOn(false, animated: false)
            green.setOn(false, animated: false)
            blue.setOn(false, animated: false)
            blue.isEnabled = false
            red.isEnabled = false
            green.isEnabled = false
            blue.isOn = false
            red.isOn = false
            green.isOn = false
        }
        
    }
    @IBAction func switchRed(_ sender: Any) {
        
      
        if  red.isEnabled == true {
            labelStatus.backgroundColor = .red
            red.setOn(true, animated: true)
            green.setOn(false, animated: false)
            blue.setOn(false, animated: false)
        }
    
        
        
        
    }
    @IBAction func switchBlue(_ sender: Any) {
       
        if  blue.isEnabled == true {
            labelStatus.backgroundColor = .blue
            red.setOn(false, animated: false)
            green.setOn(false, animated: false)
            blue.setOn(true, animated: true)
        }
               
    }
    @IBAction func switchGreen(_ sender: Any) {
        
        
        if green.isEnabled == true {
            labelStatus.backgroundColor = .green
            red.setOn(false, animated: false)
            green.setOn(true, animated: true)
            blue.setOn(false, animated: false)
        }
        
     
    }
    
}

