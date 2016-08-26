//
//  ViewController.swift
//  Tip-Calculator
//
//  Created by Monith Ilavarasan on 8/24/16.
//  Copyright © 2016 Monith Ilavarasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tip_label: UILabel!
    @IBOutlet weak var total_label: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tip_control: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.view.backgroundColor = UIColor.purpleColor()
        //Color background purple
        
        billField.becomeFirstResponder()
        //spring up text entry before anything
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }

    @IBAction func calculate_tip(sender: AnyObject) {
        
        let tipPercentages = [0.18,0.20,0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tip_control.selectedSegmentIndex]
        let total = bill + tip
        
        
        tip_label.text = String(format: "$%.02f", tip)
        total_label.text = String(format: "$%.02f",total)
        
    }
}

