//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Admin on 8/20/17.
//  Copyright © 2017 Administrator. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    
    @IBOutlet weak var NewEntry: UITextField!
    
    
    
    
    @IBAction func AddEntry(_ sender: Any) {
        if(NewEntry.text != ""){
            list.append(NewEntry.text!)
            var msg = NewEntry.text! + " has been added sucessfully."
            
            let alert = UIAlertController(title: "New Item Added", message: msg, preferredStyle: UIAlertControllerStyle.alert)

            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
                (result : UIAlertAction) -> Void in
                print("OK")
            }
            alert.addAction(okAction)
           self.present(alert, animated: true, completion: nil)
        }

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

