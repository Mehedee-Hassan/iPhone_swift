//
//  ViewController.swift
//  SayHiApp
//
//  Created by Mehedee Hassan on 9/30/16.
//  Copyright © 2016 Mehedee Hassan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var messegeLabel: UILabel!

    @IBAction func buttonPressed(sender: UIButton) {
        
        let nameEntered = nameField.text
        messegeLabel.text = "Hi there , \(nameEntered!)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

