//
//  UserCell.swift
//  Breakpoint
//
//  Created by Roger Florat on 26/01/18.
//  Copyright © 2018 Roger Florat. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    // Outlet
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var checkImage: UIImageView!
    
    var showing = false
    
    func configureCell(profileImage image: UIImage, email: String, isSelected: Bool ){
        self.profileImage.image = image
        self.emailLbl.text = email
        if isSelected {
            self.checkImage.isHidden = false
        } else {
            self.checkImage.isHidden = true
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected {
            if showing == false {
                self.checkImage.isHidden = false
                showing = true
            } else {
                self.checkImage.isHidden = true
                showing = false
            }
        }
    }
    
    
    
}
