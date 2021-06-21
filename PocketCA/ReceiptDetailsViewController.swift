//
//  ReceiptDetailsViewController.swift
//  PocketCA
//
//  Created by Hissah on 22/9/19.
//  Copyright © 2019 RMIT. All rights reserved.
//

import UIKit

class ReceiptDetailsViewController: UIViewController {

    @IBOutlet weak var Date: UILabel!
    
    @IBOutlet weak var Amount: UILabel!
    @IBOutlet weak var Category: UILabel!
    
    @IBOutlet weak var ReceiptTitle: UILabel!
    @IBOutlet weak var PaymentMethod: UILabel!
    
    @IBOutlet weak var Image: UIImageView!
    
    /*
    var receipt: Receipt?{
        didSet{
            refreshUI()
        }
    }
    
    func refreshUI() {
        loadViewIfNeeded()
        Date.text = receipt?.date
        Amount.text = receipt?.amount
        Category.text = receipt?.category
        ReceiptTitle.text = receipt?.title
        PaymentMethod.text = receipt?.paymentMethod
    }
    */
    
    
    var date = ""
    var amount = ""
    var category = ""
    var receiptTitle = ""
    var paymentMethod = ""
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Date.text = date
        Amount.text = amount
        Category.text = category
        ReceiptTitle.text = receiptTitle
        PaymentMethod.text = paymentMethod
 
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
