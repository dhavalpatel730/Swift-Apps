//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Admin on 8/20/17.
//  Copyright © 2017 Administrator. All rights reserved.
//

import UIKit

var list = ["Buy Groceries", "Gym", "Pick up Movie Rental", "Water Plants", "Clean Bathroom"]
class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    /* Returns total number of entries */
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return list.count
    }

    /* creates cell for specified row  */
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }
    /* Accounts for deleting an item from table view */
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if(editingStyle == UITableViewCellEditingStyle.delete){
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    /*refresh table everytime you visit view */
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

