//
//  GroupFeedCell.swift
//  Breakpoint
//
//  Created by Roger Florat on 29/01/18.
//  Copyright © 2018 Roger Florat. All rights reserved.
//

import UIKit

class GroupFeedCell: UITableViewCell {

    // Outlet
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    func configurecell(profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
    
}
