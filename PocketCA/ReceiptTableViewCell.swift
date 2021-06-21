//
//  ReceiptTableViewCell.swift
//  PocketCA
//
//  Created by Hissah on 22/9/19.
//  Copyright © 2019 RMIT. All rights reserved.
//

import UIKit

class ReceiptTableViewCell: UITableViewCell {

    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Category: UILabel!
    @IBOutlet weak var Amount: UILabel!
    @IBOutlet weak var Date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setReceipt(receipt: Receipt){
        Title.text = receipt.title
        Category.text = receipt.category
        Amount.text = receipt.amount
        Date.text = receipt.date
    }

}
