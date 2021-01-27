//
//  WelcomeViewController.swift
//  Flash Chat
//  Created by Sambit Das on 10/11/19.

import UIKit
import Firebase


class WelcomeViewController: UIViewController {
    
    
    //MARK:- View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Auth.auth().currentUser != nil {
            performSegue(withIdentifier: "goToChat", sender: self)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
