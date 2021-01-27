//
//  LogInViewController.swift
//  Flash Chat
//
//  Created by Sambit Das on 10/11/19.


import UIKit
import Firebase
import SVProgressHUD


class LogInViewController: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    //MARK:- View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //MARK:- Button Action
    @IBAction func logInPressed(_ sender: AnyObject) {
        SVProgressHUD.show()
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!){ (user, error) in
            if error != nil{
                print(error!)
                SVProgressHUD.dismiss()
                self.showMsg()
            }else{
                print("Log in Successful!")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
    }
    
    func showMsg(){
        let alertController = UIAlertController(title: "Invalid Email Id and Password!", message:
                                                    "Please Enter a Valid Email Id and Password.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "try again", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
}  
