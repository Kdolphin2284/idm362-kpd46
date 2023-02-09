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
}

