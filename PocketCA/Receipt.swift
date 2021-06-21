//
//  Receipt.swift
//  PocketCA
//
//  Created by Hissah on 22/9/19.
//  Copyright © 2019 RMIT. All rights reserved.
//

import Foundation


class Receipt{
    var title: String
    var category: String
    var amount: String
    var date: String
    var paymentMethod: String
    
    init(title: String, category: String, amount: String, date: String, paymentMethod: String) {
        self.title = title
        self.category = category
        self.amount = amount
        self.date = date
        self.paymentMethod = paymentMethod
    }
    
}
