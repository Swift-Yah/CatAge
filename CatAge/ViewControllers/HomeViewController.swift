//
//  ViewController.swift
//  CatAge
//
//  Created by Rafael Ferreira on 2/19/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

import UIKit

/** The view controller for home view at **Main** storyboard. */
class HomeViewController: UIViewController {
    
    @IBOutlet weak var catAgeTextField: UITextField!
    @IBOutlet weak var resultTextField: UILabel!
    
    // MARK: UIViewController methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpLayout()
    }
    
    // MARK: Helper methods
    
    func setUpLayout() {
        resultTextField.text = String()
    }
    
    func calculateCatAgeFromHumanAge(age: Int) -> Int {
        let validAge: Int = age - 1
        
        return 20 + (validAge * 4)
    }
    
    // MARK: Actions
    
    @IBAction func calculateCatAgeAction() {
        guard catAgeTextField.text?.characters.count > 0 else {
            resultTextField.text = "Type a valid age"
            resultTextField.textColor = UIColor.redColor()
            
            return
        }
        
        if let ageString:String = catAgeTextField.text {
            let age:Int = Int(ageString)!
            
            let catAge: Int = calculateCatAgeFromHumanAge(age)
            
            resultTextField.text = "For your cat its age is: \(catAge) years old"
            resultTextField.textColor = UIColor.lightGrayColor()
        }
    }
    
}

