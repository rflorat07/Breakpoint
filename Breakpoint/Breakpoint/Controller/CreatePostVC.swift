//
//  CreatePostVC.swift
//  Breakpoint
//
//  Created by Roger Florat on 25/01/18.
//  Copyright © 2018 Roger Florat. All rights reserved.
//

import UIKit
import Firebase

class CreatePostVC: UIViewController {

    // Outlet
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var sendBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.delegate = self
        sendBtn.bindToKeyboard()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.emailLbl.text = Auth.auth().currentUser?.email
    }
    
    @IBAction func sendBtnWasPressed(_ sender: Any) {
        
        if textView.text != nil && textView.text != "Say something here..." {
            sendBtn.isEnabled = false
            DataService.instance.uploadPost(withMessage: textView.text, forUID: (Auth.auth().currentUser?.uid)!, withGroupKey: nil, sendComplete: { (isComplete) in
                if isComplete {
                    self.sendBtn.isEnabled = true
                    self.dismiss(animated: true, completion: nil)
                } else {
                    self.sendBtn.isEnabled = true
                    print("There was an error!")
                }
            })
        }
        
    }
    
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

extension CreatePostVC: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
}
