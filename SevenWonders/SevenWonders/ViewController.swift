//
//  ViewController.swift
//  SevenWonders
//
//  Created by Himanshu vagela on 3/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let imageNames = ["Taj Mahal", "Christ the Redeemer", "Great Wall Of China","Petra", "Machu Picchu", "Chichen Itza", "Colosseum"]
    
    var imageIndex = 0
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        cell.imageContainer.image = UIImage(named: imageNames[indexPath.row])
        cell.lblImage.text = imageNames[indexPath.row]
        return cell
    }
//    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // when click the picture
        let imageClicked = imageNames[indexPath.row]
        imageIndex = indexPath.row
        print(imageClicked)
        
        performSegue(withIdentifier: "segueDetails", sender: "self")
    }
    
    // before perform the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetails" {
            let nextVC = segue.destination as! DetailViewController
            
//            // listen to secondVC
//            // whenever do something based on the protocol, call setStatus
//            nextVC.setStatusDelegate = self
             
            nextVC.index = imageIndex
        }
    }
    


}

