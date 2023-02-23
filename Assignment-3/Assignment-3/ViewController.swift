//
//  ViewController.swift
//  Assignment-3
//
//  Created by Himanshu Vaghela on 2/22/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{

    
let foodNames = ["Idli","Kebab","Naan", "Paneer", "Paratha"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.imageContainer.image = UIImage(named: "\(foodNames[indexPath.row])")
        cell.lblImage.text = foodNames[indexPath.row]
       return cell
    }


}

