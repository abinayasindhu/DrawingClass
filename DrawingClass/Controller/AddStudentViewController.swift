//
//  AddStudentViewController.swift
//  DrawingClass
//
//  Created by Abinaya Sindhu on 04/04/18.
//  Copyright © 2018 Abinaya Sindhu. All rights reserved.
//

import UIKit
import CoreData

class AddStudentViewController: UIViewController {
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var dobTextField: UITextField!
    @IBOutlet weak var dojTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask))
        
        navigationController?.navigationBar.tintColor = UIColor.white
        addButton.layer.cornerRadius = 12.5
    }
    
    @IBAction func AddButtonPressed(_ sender: UIButton) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let newStudent = Student(context: context)
        newStudent.name = nameTextField.text
        newStudent.age = Int16(ageTextField.text!)!
        newStudent.dateOfBirth = dobTextField.text
        newStudent.joiningDate = dojTextField.text
        newStudent.feesPaid = "Paid"
        
        do{
            try context.save()
        } catch {
            print("Error saving context\(error)")
        }
    }
}
