//
//  MiraclePillViewController.swift
//  MiraclePill
//
//  Created by Mehedee Hassan on 12/24/16.
//  Copyright © 2016 Mehedee Hassan. All rights reserved.
//

import UIKit

class MiraclePillViewController: UIViewController ,UIPickerViewDelegate,UIPickerViewDataSource{

    @IBOutlet weak var pickStateControl: UIPickerView!
    @IBOutlet weak var stateSelectButtonControl: UIButton!
     let states = ["Dhaka","Rangpur","barishal","chittagong"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pickStateControl.delegate = self
        pickStateControl.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

 
    
    // implementation
    
    //number of column
    public func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    // returns the # of rows in each component..
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return states.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateSelectButtonControl.setTitle( states[row], for: UIControlState())
        pickStateControl.isHidden = true
    }
    
    @IBAction func onClick(_ sender: AnyObject) {
        pickStateControl.isHidden = false
    }
    

}
