//
//  ViewController.swift
//  idm362-kpd46
//
//  Created by Kyle Dolphin on 1/19/23.
//

import UIKit

class ViewController: UIViewController {

    // Initialize Outlet
    @IBOutlet weak var testViewListButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Do something with Outlet
    @IBAction func testViewListButtonPrint(_ sender: Any) {
        print("test print hehe")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // List Text Input
    @IBOutlet weak var listsTextInput: UITextField!
    
    // Array of List Items
    var listItemsArray: [String] = [] // our holder of strings
    
    // Add Text Input to List of Items
    @IBAction func listsSubmitButton(_ sender: UIButton) {
        if let item = listsTextInput.text, item.isEmpty == false { // need to make sure we have something here
            listItemsArray.append(item) // store it in our data holder
        }
        listsTextInput.text = nil // clean the textfield input

        for listItems in listItemsArray {
            print(listItems) // prints the items currently in the list
        }
    }
    
    
    // your list table view
    @IBOutlet weak var yourListTableView: UITableView!
    
    // completed items table view
    @IBOutlet weak var completedItemsTableView: UITableView!
    
     
    
    
}

