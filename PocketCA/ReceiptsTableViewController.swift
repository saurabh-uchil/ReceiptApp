//
//  ReceiptsTableViewController.swift
//  PocketCA
//
//  Created by Hissah on 22/9/19.
//  Copyright © 2019 RMIT. All rights reserved.
//

import UIKit

class ReceiptsTableViewController: UITableViewController {
   
    var receipts: [Receipt] = []
    var myindex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        receipts = createArray()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    func createArray() -> [Receipt]{
        var tempReceipts: [Receipt] = []
        
        let Receipt1 = Receipt(title: "Urban Houses", category: "Rent", amount: "26.39$", date: "Mar 30", paymentMethod: "cash")
        let Receipt2 = Receipt(title: "Hungry Jack", category: "Restaurants", amount: "30.00$", date: "Mar 21", paymentMethod: "cash" )
        let Receipt3 = Receipt(title: "Coles", category: "Groceries", amount: "70.11$", date: "Mar 18", paymentMethod: "card")
        let Receipt4 = Receipt(title: "Uber Trip", category: "Uber", amount: "26.39$", date: "Mar 16", paymentMethod: "paypal")
        let Receipt5 = Receipt(title: "Metro", category: "Groceries", amount: "26.39$", date: "Mar 12", paymentMethod: "cash")
        
        tempReceipts.append(Receipt1)
        tempReceipts.append(Receipt2)
        tempReceipts.append(Receipt3)
        tempReceipts.append(Receipt4)
        tempReceipts.append(Receipt5)
        
        return tempReceipts
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return receipts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let receipt = receipts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReceiptCell") as! ReceiptTableViewCell
        
        cell.setReceipt(receipt: receipt)
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let vc = self.storyboard?.instantiateViewController(withIdentifier: "ReceiptDetailsViewController") as! ReceiptDetailsViewController
       vc.title = self.receipts[indexPath.row].title


        
        vc.date = receipts[indexPath.row].date
        vc.amount = receipts[indexPath.row].amount
        vc.category = receipts[indexPath.row].category
        vc.receiptTitle = receipts[indexPath.row].title
        vc.paymentMethod = receipts[indexPath.row].paymentMethod
 
        self.navigationController?.pushViewController(vc, animated: true)
 
    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
}
