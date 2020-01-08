//
//  ViewController.swift
//  FinalGradeCalculator
//
//  Created by Oscar Bankowski on 10/14/19.
//  Copyright © 2019 Oscar Bankowski. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    @IBOutlet weak var currentGrade: UITextField!
    
    @IBOutlet weak var finalWeight: UITextField!
    
    @IBOutlet weak var desiredGrade: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
    
    @IBAction func segmentGradeChange(_ sender: Any) { switch segmentControl.selectedSegmentIndex {
    case 0: desiredGrade.text = "90"
    case 1: desiredGrade.text = "80"
    case 2: desiredGrade.text = "70"
    case 3: desiredGrade.text = "60"
    default: break
        
        }
        
        if desiredGrade.text?.count != 0 {
            if currentGrade.text?.count != 0 {
                if finalWeight.text?.count != 0 {
                    
                    var desiredDouble:Double = Double(desiredGrade.text!)!
                    var currentDouble:Double = Double(currentGrade.text!)!
                    var weightPercentage:Double = Double(finalWeight.text!)!
                    var finalGoal:Int = 0
                    weightPercentage = weightPercentage / 100
                    
                    finalGoal = Int((desiredDouble - ((1 - weightPercentage) * currentDouble))/weightPercentage)
                    
                    if finalGoal >= 100 {
                        self.view.backgroundColor = UIColor.red
                    }
                    else {
                        self.view.backgroundColor = UIColor.green
                    }
                    
                    
                    resultLabel.text = "\(finalGoal)"
                }
            }
        }
    }
    
    
    @IBAction func Calculate(_ sender: Any) {
        
        if desiredGrade.text?.count != 0 {
            if currentGrade.text?.count != 0 {
                if finalWeight.text?.count != 0 {
                    
                    
                    
                    var desiredDouble:Double = Double(desiredGrade.text!)!
                    var currentDouble:Double = Double(currentGrade.text!)!
                    var weightPercentage:Double = Double(finalWeight.text!)!
                    var finalGoal:Int = 0
                    weightPercentage = weightPercentage / 100
                    
                    finalGoal = Int((desiredDouble - ((1 - weightPercentage) * currentDouble))/weightPercentage)
                    
                    if finalGoal >= 100 {
                        self.view.backgroundColor = UIColor.red
                    }
                    else {
                        self.view.backgroundColor = UIColor.green
                    }
                    
                    
                    resultLabel.text = "\(finalGoal)"
                }
            }
        }
    }
}







