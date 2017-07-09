//
//  ViewController.swift
//  FoodTracker
//
//  Created by Zenika on 08/07/2017.
//  Copyright © 2017 DevArtisant. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties

    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    
    //MARK: Actions

    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
    
    }

}

