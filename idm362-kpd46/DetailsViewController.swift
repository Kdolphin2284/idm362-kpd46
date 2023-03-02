//
//  DetailsViewController.swift
//  idm362-kpd46
//
//  Created by Kyle Dolphin on 3/2/23.
//

import UIKit

class DetailsViewController: UIViewController {

    
    // SETUP Vars for Segue
    var ndxNum:Int?
    var incomingName:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bigName.text = incomingName?.uppercased()
    }
    
    @IBOutlet weak var bigName: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
