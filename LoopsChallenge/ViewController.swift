//
//  ViewController.swift
//  LoopsChallenge
//
//  Created by Robert Mugabe on 5/30/18.
//  Copyright © 2018 Mobile Makers Edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    
    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var nameTextField1: UITextField!
    @IBOutlet weak var nameTextField2: UITextField!
    @IBOutlet weak var nameTextField3: UITextField!
    
    @IBOutlet weak var scoreTextField1: UITextField!
    @IBOutlet weak var scoreTextField2: UITextField!
    @IBOutlet weak var scoreTextField3: UITextField!
    
    var values = [String]()
    var output = ""
    var namesAndScores: [String:Int] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setValues()
    {
        if let value1 = textField1.text, let value2 = textField2.text, let value3 = textField3.text, let value4 = textField4.text, let value5 = textField5.text {
            values = [value1,value2,value3,value4,value5]
        }
        
        if let name1 = nameTextField1.text, let name2 = nameTextField2.text, let name3 = nameTextField3.text, let text1 = scoreTextField1.text, let text2 = scoreTextField2.text, let text3 = scoreTextField3.text, let score1 = Int(text1), let score2 = Int(text2), let score3 = Int(text3) {
            namesAndScores = [name1:score1,name2:score2,name3:score3]
        }
        
    }
    
    @IBAction func mvpButtonPressed(_ sender: UIButton)
    {
        view.endEditing(true)
        var output = "" //reset
        setValues()
        
        /***************************************************
         * Start Your Code Here For MVP
         ***************************************************/
       
        for value in values {
            output +=  " \(value)"
        }
        
        /***************************************************
         * End Your Code Here For MVP
         ***************************************************/
        myTextView.text = output
    }
    
    @IBAction func stretch1ButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        setValues()
        output = ""
        /***************************************************
         * Start Your Code Here For Stretch #1
         ***************************************************/
        
        for (index, value) in values.enumerated() {
            if index < 1 {
                output += "\(value)"
            }
            else {
                output += ", \(value)"
            }
        }
        
        /***************************************************
         * End Your Code Here For Stretch #1
         ***************************************************/
        myTextView.text = output
        
    }
    
    @IBAction func stretch2ButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        setValues()
        var maximum = values[0]
        /***************************************************
         * Start Your Code Here For Stretch #2
         ***************************************************/
        if let _  = Int(maximum) {
            for value in values {
                if let val = Int(value) {
                    if Int(maximum)! < val {
                    maximum = value
                    }
                }
            }
        }
        
        /***************************************************
         * End Your Code Here For Stretch #2
         ***************************************************/
        myTextView.text = "After searching the array, \(maximum) is the largest"
    }
    
    @IBAction func stretch3ButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        setValues()
        var sum = 0
        /***************************************************
         * Start Your Code Here For Stretch #3
         ***************************************************/
        for value in values {
            sum +=  Int(value)!
        }
        
        /***************************************************
         * End Your Code Here For Stretch #3
         ***************************************************/
        myTextView.text = "The total of the array is \(sum)"
    }
    
    @IBAction func stretch4ButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        setValues()
        var minimum = values[0]
        var index = 0
        /***************************************************
         * Start Your Code Here For Stretch #4
         ***************************************************/
       
        for (indexOne, value) in values.enumerated() {
            
            if Int(value)! < Int(minimum)! {
                    minimum = value
                    index = indexOne
            }
        }
        
        /***************************************************
         * End Your Code Here For Stretch #4
         ***************************************************/
        myTextView.text =   "After searching the array, we have\n" +
            "found the minimum is \(minimum) and is\n" +
        "in index # \(index)"
    }
    
    @IBAction func stretch5ButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        setValues()
        output = ""
        /***************************************************
         * Start Your Code Here For Stretch #5
         ***************************************************/
        for (names, scores) in namesAndScores {
            output += "\(names): \(scores) \n"
        }
        
        
        /***************************************************
         * End Your Code Here For Stretch #5
         ***************************************************/
        myTextView.text = output
    }
    
    
}

