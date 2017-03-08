
//
//  RabbitaskTVC.swift
//  Rabbitask
//
//  Created by Eric Giannini on 3/1/17.
//  Copyright © 2017 Unicorn Mobile, LLC. All rights reserved.
//

import UIKit

class RabbitaskTVC: UITableViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    
    var rabbitasks = [Rabbitask]()

    
    func loadInitialData() {
        
        rabbitasks.append(Rabbitask(itemName: "ride a bike"))
        rabbitasks.append(Rabbitask(itemName: "buy North Face"))
        rabbitasks.append(Rabbitask(itemName: "Eat healthily"))
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadInitialData()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func unwindToList(segue: UIStoryboardSegue) {
//        let source: AddRabbitaskVC = segue.source
//        
//        if let sourceViewController = sender.source as? AddRabbitaskVC {
////            dataRecieved = sourceViewController.dataPassed
//            let task: Rabbitask = source
//        }
//    }

    
    @IBAction func unwindToTVC(sender:UIStoryboardSegue) {
    
            if let sourceViewController = sender.source as? AddRabbitaskVC {
                
                print("\(type(of:sourceViewController)) with \(sourceViewController.toDoRabbitask)")
    
                let newRabbitask = sourceViewController.toDoRabbitask
                print("\(newRabbitask.itemName) but there is no item name")
            
                rabbitasks.append(newRabbitask)
                self.tableView.reloadData()
            }
            
            
//            print("\(type(of:source.textField.text)) the AddRabbitaskVC in unwindToTVC")

    }
    
//    - (IBAction)unwindToList:(UIStoryboardSegue *)segue {
//    AddToDoItemViewController *source = [segue sourceViewController];
//    ToDoItem *item = source.toDoItem;
//    if (item != nil) {
//    [self.toDoItems addObject:item];
//    [self.tableView reloadData];
//    }
//    }
//    
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        print(rabbitasks.count)
        return rabbitasks.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellForRabbitask", for: indexPath)

        cell.textLabel?.text = rabbitasks[indexPath.row].itemName
        print(rabbitasks[indexPath.row].itemName)
        
//        if rabbitasks[indexPath.row].isCompleted {
//            cell.accessoryType = UITableViewCellAccessoryType.checkmark
//
//        } else {
//            cell.accessoryType = UITableViewCellAccessoryType.none
//        }
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
