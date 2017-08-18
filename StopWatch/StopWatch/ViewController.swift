//
//  ViewController.swift
//  StopWatch
//
//  Created by Admin on 8/18/17.
//  Copyright © 2017 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 0
    
    @IBOutlet weak var TimerLabel: UILabel!
    
    func IncrementCounter(timer:Timer){
        counter += 1
        TimerLabel.text = String (counter)
        
    }
    @IBAction func StartWatch(_ sender: Any) {
        if(!timer.isValid){
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: IncrementCounter)
        }
    }

    @IBAction func StopWatch(_ sender: Any) {
        timer.invalidate()
    }

    @IBAction func ResetWatch(_ sender: Any) {
        counter = 0
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

