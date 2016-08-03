//
//  SecondViewController.swift
//  To Do List
//
//  Created by Ali Mir on 8/2/16.
//  Copyright © 2016 Ali Mir. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var itemTextField: UITextField!
    

    @IBAction func addButtonPressed(sender: AnyObject) {
        
        let item = itemTextField.text!
        if item != "" {
            toDoList.append(item)
            itemTextField.text = ""
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
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        itemTextField.resignFirstResponder()
        return true
    }


}

