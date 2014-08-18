//
//  ViewController.swift
//  ToDoList-Swift
//
//  Created by Jakub on 18.08.14.
//  Copyright (c) 2014 Jakub Truhlar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // UITableView Settings
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return taskManager.tasks.count
    }
    
    // Fill the list with data from array
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        
        cell.textLabel.text = taskManager.tasks[indexPath.row].first
        cell.detailTextLabel.text = taskManager.tasks[indexPath.row].last
        
        return cell
    }
    
    // Refresh table
    override func viewWillAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    // Delete a cell
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        
        if editingStyle == UITableViewCellEditingStyle.Delete {
            
            // Delete the cell
            taskManager.tasks.removeAtIndex(indexPath.row)
            
            // Refresh the list
            tableView.reloadData()
        }
    }

}

