//
//  AddReceiptViewController.swift
//  PocketCA
//
//  Created by Hissah on 22/9/19.
//  Copyright © 2019 RMIT. All rights reserved.
//

import UIKit

class AddReceiptViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var AmountTextField: UITextField!
    @IBOutlet weak var ReceiptTitleTextField: UITextField!
    
    
    
    @IBOutlet weak var CategoriesPickerView: UIPickerView!
    let Categories = ["Rent", "Restaurants", "Drinks", "Uber", "Grocerires"]
    let PaymentMthod = ["Paypal", "Card", "Cash"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            return Categories[row]
        } else {
            return PaymentMthod[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return Categories.count
        } else {
            return PaymentMthod.count
        }
        
    }
    
    
    
    
    
    @IBAction func ImportButton(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        image.allowsEditing = false
        self.present(image, animated: true)
    }
    
    @IBAction func TakePhotoButton(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)
        {
            let image = UIImagePickerController()
            image.delegate = self
            image.sourceType = UIImagePickerController.SourceType.camera
            image.allowsEditing = true
            self.present(image, animated: true)
            
        }
    }
    
    @IBOutlet weak var ReceiptImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
 
    //Display the image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        {
            ReceiptImageView.image = image
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func AddButton(_ sender: Any) {
        
        //let Date = UIDatePicker.text
        let Amount = AmountTextField.text
        //let Category = CategoriesPickerView.text
        let ReceiptTitle = ReceiptTitleTextField.text
        //let PaymentMethod = CategoryPickerView.text
        
        if(Amount == "" || ReceiptTitle == "")
        {
            displayAlertMessage(userMessage: "Fields cannot be empty");
        } else {
            //displayAlertMessage(userMessage: "Added!");
            self.navigationController?.popToRootViewController(animated: true)
        }
        
        
    }
    
    func displayAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertController.Style.alert);
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion: nil);
    }
    
    
    
}
