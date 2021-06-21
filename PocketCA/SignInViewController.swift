//
//  SignInViewController.swift
//  PocketCA
//
//  Created by Hissah on 22/9/19.
//  Copyright © 2019 RMIT. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func LogInButton(_ sender: Any) {
        // not real data
        let loginEmail = EmailTextField.text;
        let loginPassword = PasswordTextField.text;
        let storedEmail = "admin";
        //let storedEmail = UserDefaults.standard.string(forKey: "Email");
        //let storedEmail = UserDefaults.value(forKey: "Email") as? String ?? ""
        let storedPassword = "123";
        //let storedPassword = UserDefaults.standard.string(forKey: "Password");
        //let storedPassword = UserDefaults.value(forKey: "Password") as? String ?? ""
        
        if EmailTextField.text == "" || PasswordTextField.text == ""
        {
            displayAlertMessage(userMessage: "Make sure to fill in all required textfields");
        }
        
        else if(storedEmail == loginEmail)
        {
            if(storedPassword == loginPassword )
            {
                let TabBar = self.storyboard?.instantiateViewController(withIdentifier: "TabBar") as! UITabBarController
                
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                appDelegate.window?.rootViewController = TabBar
            }
        }
        
        else
        {
            //displayAlertMessage(userMessage: "Username or Password is incorrect");
            displayAlertMessage(userMessage: "Use email: admin, and Password: 123");
        }
    }
    
    
    
    // Creating an alert message function
    func displayAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertController.Style.alert);
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion: nil);
    }
    


}
