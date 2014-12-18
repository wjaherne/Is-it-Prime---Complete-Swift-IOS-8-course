//
//  ViewController.swift
//  Is it Prime
//
//  Created by RIA on 17/12/2014.
//  Copyright (c) 2014 NoCompute. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var message: UILabel!
    @IBAction func buttonPressed(sender: AnyObject) {
        
        var isPrime = true
        
        var Integer = number.text.toInt()
        
        if (Integer != nil) {
            if (Integer<1) {
                
                message.text = "Must be a positive number"
                
            } else {
                
                if (Integer==1) {
                    
                    message.text = "1 is not prime!"
                    
                } else {
                    
                    for var i = 2; i<Integer; ++i {
                        
                        if (Integer! % i == 0) {
                            
                            //number is not prime
                            
                            isPrime = false
                        }
                    }
                    
                    if (isPrime == true) {
                        
                        
                        message.text = "Yes it is Prime!"
                    
                    } else {
                        
                        message.text = "Not a Prime!"
                        
                    }
                    
                }
                
                
            }
            
        } else {
            
            message.text = "Please enter a number"
            
        }
        
        println(number.text)
        
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

