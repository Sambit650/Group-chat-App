//
//  RegisterViewController.swift
//  Flash Chat
//
//  Created by Sambit Das on 10/11/19.

import UIKit
import Firebase
import SVProgressHUD


class RegisterViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    //MARK:- View Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //MARK:- Button Action
    @IBAction func registerPressed(_ sender: AnyObject) {
        SVProgressHUD.show()
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            
            if error != nil {
                print(error!)
                SVProgressHUD.dismiss()
                self.showalert()
            }else{
                print("Registration Successful!")
                
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
    }
    
    func showalert(){
        let alert1 = UIAlertController(title: "Your Email Id already Registered", message: "Please Login with your Registered Email Id.", preferredStyle: .alert)
        
        alert1.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        alert1.addAction(UIAlertAction(title: "Login", style: .default, handler: { action in self.performSegue(withIdentifier: "login", sender: self)
        }))
        
        self.present(alert1, animated: true)
    }
}
