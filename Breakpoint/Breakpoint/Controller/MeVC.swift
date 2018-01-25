//
//  MeVC.swift
//  Breakpoint
//
//  Created by Roger Florat on 25/01/18.
//  Copyright © 2018 Roger Florat. All rights reserved.
//

import UIKit

class MeVC: UIViewController {
    //Outlet
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func signOutBtnWasPressed(_ sender: Any) {
        //sign out code
    }
    
}
