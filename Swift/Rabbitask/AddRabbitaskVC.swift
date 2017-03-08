//
//  AddRabbitaskVC.swift
//  Rabbitask
//
//  Created by Eric Giannini on 3/3/17.
//  Copyright © 2017 Unicorn Mobile, LLC. All rights reserved.
//

import UIKit

class AddRabbitaskVC : UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    var toDoRabbitask = Rabbitask()
    
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (sender as? UIBarButtonItem) !== saveButton {
            return 
        }
        if !(self.textField.text?.isEmpty)! {
            
            toDoRabbitask = Rabbitask(itemName: self.textField.text!)
            print(toDoRabbitask.itemName)
            
        }

    }

}
