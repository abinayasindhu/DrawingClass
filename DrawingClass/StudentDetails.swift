//
//  StudentDetails.swift
//  DrawingClass
//
//  Created by Abinaya Sindhu on 04/04/18.
//  Copyright © 2018 Abinaya Sindhu. All rights reserved.
//

import UIKit

class StudentDetails: UIViewController {
    
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var dobTextField: UITextField!
    @IBOutlet weak var joiningDateTextField: UITextField!
    @IBOutlet weak var feesPaidTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.tintColor = UIColor.white
        saveButton.layer.cornerRadius = 12.5
    }

    @IBAction func editButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
    }
}
