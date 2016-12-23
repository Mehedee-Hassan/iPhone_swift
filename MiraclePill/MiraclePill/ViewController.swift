//
//  ViewController.swift
//  MiraclePill
//
//  Created by Mehedee Hassan on 10/15/16.
//  Copyright © 2016 Mehedee Hassan. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDelegate,UIPickerViewDataSource{

    
 
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var stateButton: UIButton!
    
    
    let states = ["Dhaka","Rangpur","barishal","chittagong"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        statePicker.dataSource = self
        statePicker.delegate = self
    }
    
    

    
    
    // implementation
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        
        // column
        return 1
    }
    
    
 
    
   public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
   {
      return 0//states.count
   }
    
    
    
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
        
    {
        //stateButton.setTitle(states[row], for: UIControlState())
        //statePicker.isHidden = true
        return ""//states[row]
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func onStateButtonClick(_ sender: AnyObject) {
        statePicker.isHidden = false
    }
  
}

