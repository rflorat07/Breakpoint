//
//  GroupCell.swift
//  Breakpoint
//
//  Created by Roger Florat on 29/01/18.
//  Copyright © 2018 Roger Florat. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    // Outlet
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var groupDescLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!
    
    func configureCell(title: String, description: String, memberCount: Int) {
        self.groupTitleLbl.text = title
        self.groupDescLbl.text = description
        self.memberCountLbl.text = "\(memberCount) members."
    }
}
