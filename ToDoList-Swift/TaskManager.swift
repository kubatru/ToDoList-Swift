//
//  TaskManager.swift
//  ToDoList-Swift
//
//  Created by Jakub on 18.08.14.
//  Copyright (c) 2014 Jakub Truhlar. All rights reserved.
//

import UIKit

var title = "no title"
var details = "no description"

class TaskManager: NSObject {
    
    // Array collects arrays
    var tasks: [[String]] = []
    
    func newTask(ttl:String, dtls:String) {
        
        var task = [ttl,dtls]
        tasks.append(task)

    }
}

// New instance
var taskManager = TaskManager()
