//
//  SignUpViewController.swift
//  PocketCA
//
//  Created by Hissah on 22/9/19.
//  Copyright © 2019 RMIT. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var FullNameTextField: UITextField!
    
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var REPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CreatButton(_ sender: Any) {
        
        let FullName = FullNameTextField.text;
        let Email = EmailTextField.text;
        let Password = PasswordTextField.text;
        let REPassword = REPasswordTextField.text;
        
        //Check if password and confirm password matches
        if(Password != REPassword){
            displayAlertMessage(userMessage: "Passwords doesn't match");
            return;
        }
        
        //Check if all the fields are filled
        
        if(FullName == "" || Email == "" || Password == "" || REPassword == "")
        {
            displayAlertMessage(userMessage: "Fields cannot be empty");
        }
        
        // Save values
        UserDefaults.standard.set(FullName, forKey:"FullName");
        UserDefaults.standard.set(Email, forKey:"Email");
        UserDefaults.standard.set(Email, forKey:"Password");
        UserDefaults.standard.synchronize();
        
        _ = UIAlertController(title:"Alert", message:"Succesfully Registered", preferredStyle: UIAlertController.Style.alert);
        
        _ = UIAlertAction(title: "OK", style: .default)
        {
            action in
            self.dismiss(animated: true, completion: nil)
        }
        
        let logIn = self.storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        
        self.navigationController?.pushViewController(logIn, animated: true)
    }
    
    func displayAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertController.Style.alert);
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion: nil);
    }

    
}
