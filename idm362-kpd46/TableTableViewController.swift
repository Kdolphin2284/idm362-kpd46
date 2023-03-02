//
//  TableTableViewController.swift
//  idm362-kpd46
//
//  Created by Kyle Dolphin on 3/2/23.
//

import UIKit

class TableTableViewController: UITableViewController {

    
    // Global Vars
    var fnames: [String] = ["Friend 1", "Friend 2", "Friend 3", "Friend 4", "Friend 5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fnames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = fnames[indexPath.row]
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete from Array
            fnames.remove(at: indexPath.row)
            //Reload Table
            tableView.reloadData()
            
        }
    }
    

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

    
    @IBAction func addNameFunction(_ sender: Any) {
        let alertObj = UIAlertController(title: "New Friend", message: "Add new name", preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default) {
            [unowned self] action in
            guard let textField = alertObj.textFields?.first,
                  let nameToSave = textField.text else {
                return
            }
            // update array
            self.fnames.append(nameToSave)
            // reload table
            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertObj.addTextField()
        alertObj.addAction(saveAction)
        alertObj.addAction(cancelAction)
        
        present(alertObj, animated: true)
    }
    
    
    
    
    
    
    
    // MARK: - Navigation

    var selRowNum:Int = 0
    var selRowName:String = ""
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row selected " + indexPath.row.description)
        selRowNum = indexPath.row
        selRowName = fnames[selRowNum]
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "showDetail" {
            let detailObj = segue.destination as! DetailsViewController
            detailObj.ndxNum = selRowNum
            detailObj.incomingName = selRowName
            
            // Go to detail view
            performSegue(withIdentifier: "showDetail", sender: nil)
        }
    }
    

}
