//
//  AddStudentViewController.swift
//  DrawingClass
//
//  Created by Abinaya Sindhu on 04/04/18.
//  Copyright © 2018 Abinaya Sindhu. All rights reserved.
//

import UIKit

class AddStudentViewController: UIViewController {
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var dobTextField: UITextField!
    @IBOutlet weak var dojTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        navigationController?.navigationBar.tintColor = UIColor.white
        addButton.layer.cornerRadius = 12.5
    }
    
    @IBAction func AddButtonPressed(_ sender: UIButton) {
    }
}
