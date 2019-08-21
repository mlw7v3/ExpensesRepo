//
//  ExpensesViewController.swift
//  Expenses
//
//  Created by Megan Wilson on 8/21/19.
//  Copyright © 2019 Megan Wilson. All rights reserved.
//

import UIKit

class ExpensesViewController: UIViewController {

    var expenses = [Expenses]()
    
    var dateFormat = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormat.dateFormat = "MMMM d, yyyy HH:mm"
        
        // unwrapping date
        if let date = dateFormat.date(from: "June 1, 2018 18:30"){
            expenses.append(Expenses(title: "Dinner", amount: 32.50, date: date))
        }
        
        if let date = dateFormat.date(from: "May 30, 2018 12:17"){
            expenses.append(Expenses(title: "Office Supplies", amount: 59.34, date: date))
        }
        
        if let date = dateFormat.date(from: "May 30, 2018 11:43"){
            expenses.append(Expenses(title: "Uber", amount: 16.23, date: date))
        }
        
        if let date = dateFormat.date(from: "May 29, 2018 8:45"){
            expenses.append(Expenses(title: "Coffee", amount: 3.95, date: date))
        }

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
