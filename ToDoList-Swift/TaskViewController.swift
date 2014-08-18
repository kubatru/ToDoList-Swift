//
//  TaskViewController.swift
//  ToDoList-Swift
//
//  Created by Jakub on 18.08.14.
//  Copyright (c) 2014 Jakub Truhlar. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var taskTitle: UITextField!
    @IBOutlet var taskDescription: UITextField!
    @IBAction func addBtnPressed(sender: UIButton) {
        
        // Only if both fields are not empty
        if !taskTitle.text.isEqual("") || !taskTitle.text.isEqual("") {
            
            // Send data from fields to array
            taskManager.newTask(taskTitle.text, dtls: taskDescription.text)
        
            // Hide keyboard
            self.view.endEditing(true)
        
            // Reset fields
            taskTitle.text = ""
            taskDescription.text = ""
            
            // Go back to the tableView scene
            navigationController.popViewControllerAnimated(true)
            
        }
    }
    
    // Hide the keyboard when touch ends
    override func touchesEnded(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    // Hide the keyboard when the Enter button is pressed
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}
