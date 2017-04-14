
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
    
    
    /// A function that loads the initial data for the object.
    func loadInitialData() {
        
        let rabbitaskOne = Rabbitask()
        rabbitaskOne.itemName = "ride a bike"
        rabbitasks.append(rabbitaskOne)
        
        let rabbitaskTwo = Rabbitask()
        rabbitaskTwo.itemName = "buy North Face"
        rabbitasks.append(rabbitaskTwo)
        
        let rabbitaskThree = Rabbitask()
        rabbitaskThree.itemName = "eat healthily"
        rabbitasks.append(rabbitaskThree)

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
            
            // FIXME: empty cell returns even if textField is empty
            let newRabbitask = sourceViewController.toDoRabbitask
            
            rabbitasks.append(newRabbitask)
            
            self.tableView.reloadData()
        }
        
        
        
    }
    
    
    
    
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
        
        if rabbitasks[indexPath.row].isCompleted {
            cell.accessoryType = UITableViewCellAccessoryType.checkmark
        } else {
            cell.accessoryType = UITableViewCellAccessoryType.none
        }
        
        //        if rabbitasks[indexPath.row].isCompleted {
        //            cell.accessoryType = UITableViewCellAccessoryType.checkmark
        //
        //        } else {
        //            cell.accessoryType = UITableViewCellAccessoryType.none
        //        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: false)
        
        let tappedRabbitask: Rabbitask = self.rabbitasks[indexPath.row]
        
        tappedRabbitask.isCompleted = !tappedRabbitask.isCompleted
        
        tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.none)
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        //
//        tableView.deselectRow(at: indexPath, animated: true)
//        
//        var rabbitaskTapped = Rabbitask()
//        
//        if rabbitaskTapped = self.rabbitasks[indexPath.row].isCompleted {
//            rabbitaskTapped.isCompleted = !rabbitaskTapped.isCompleted
//        }
//    }
    
    
//    - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    [tableView deselectRowAtIndexPath:indexPath animated:NO];
//    
//    ToDoItem *tappedItem = [self.toDoItems objectAtIndex:indexPath.row];
//    
//    tappedItem.completed = !tappedItem.completed;
//    
//    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
//    
//    
//    }
    
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
