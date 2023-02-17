//
//  ViewController.swift
//  Assignment2
//
//  Created by Himanshu Vaghela on 2/17/23.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    

    @IBOutlet weak var tableViewTop: UITableView!
    
    @IBOutlet weak var tableViewBottom: UITableView!
    
    let restaurants = ["Subway","Starbucks","Chipotle","Dominoes"]
    let foods = [["Paneer tikka","Aloo tikki","Chicken Teriyaki","Meat Bonanza"],["Caramel Frappe","americano","Choclate Chip","Chai Tea Latte"],["Chips  and Dip","Quesadilas","Bowl","Burrito"],["Not pinneapple pizza","Cheese Burst ","Garlic Bread","Coke"]]
    
    var Dishes : [String]  = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableViewTop{
               return restaurants.count
           }
           else{
               return Dishes.count
           }
       }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableViewTop{
            let cell = tableView.dequeueReusableCell(withIdentifier: "celltop", for: indexPath)
                cell.textLabel?.text = restaurants[indexPath.row]
                return cell
                  }
           
           else{
             let cell = tableView.dequeueReusableCell(withIdentifier: "cellbottom", for: indexPath)
                 cell.textLabel?.text = Dishes[indexPath.row]
                 return cell
                  }
                  
       }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                if tableView == tableViewTop{
                    
                    let selectRow = indexPath.row
                    
                    Dishes = foods[selectRow]
             
                    self.tableViewBottom.reloadData()
                }
            }

        }
