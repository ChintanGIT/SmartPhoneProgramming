//
//  ViewController.swift
//  tableview
//
//  Created by Himanshu Vaghela on 2/14/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblView: UITableView!
    
    let friends = ["Ashish", "Tom", "Bill", "Peter", "Sara","Mark","Ashish", "Tom", "Bill", "Peter", "Sara","Mark","Ashish", "Tom", "Bill", "Peter", "Sara","Mark","Ashish", "Tom", "Bill", "Peter", "Sara","Mark","Ashish", "Tom", "Bill", "Peter", "Sara","Mark"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = friends[indexPath.row]

        return cell
    }


}

