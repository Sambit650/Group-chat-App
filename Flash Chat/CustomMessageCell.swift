//
//  CustomMessageCell.swift
//  Flash Chat
//  Created by Sambit Das on 10/11/19.

import UIKit
import Firebase

class CustomMessageCell: UITableViewCell {
    
    //MARK:- Outlets
    @IBOutlet var messageBackground: UIView!
    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var messageBody: UILabel!
    @IBOutlet var senderUsername: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}
