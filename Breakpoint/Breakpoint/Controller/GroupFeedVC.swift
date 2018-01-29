//
//  GroupFeedVC.swift
//  Breakpoint
//
//  Created by Roger Florat on 29/01/18.
//  Copyright © 2018 Roger Florat. All rights reserved.
//

import UIKit

class GroupFeedVC: UIViewController {

    // Outlet
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var membersLbl: UILabel!
    @IBOutlet weak var sendBtnView: UIView!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var sendBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendBtnView.bindToKeyboard()
    }


    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func sendBtnWasPressed(_ sender: Any) {
    }
    
}
