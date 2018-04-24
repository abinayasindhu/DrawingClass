//
//  ViewController.swift
//  DrawingClass
//
//  Created by Abinaya Sindhu on 04/04/18.
//  Copyright © 2018 Abinaya Sindhu. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UITableViewController {

    var studentList = [Student]()
    let context = ((UIApplication.shared.delegate) as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadStudentList()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath) as! StudentListCell
        cell.studentName.text = studentList[indexPath.row].name!
      
        return cell
    }
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "showAddStudent", sender: self)
    }
    
    func loadStudentList() {
        let request : NSFetchRequest<Student> = Student.fetchRequest()
        do {
            studentList = try context.fetch(request)
        } catch {
            print("Error fetching data \(error)")
        }
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! StudentDetails
        
        if let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.selectedStudent = studentList[indexPath.row]
        }
    }
}


