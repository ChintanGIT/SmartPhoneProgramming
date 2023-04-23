//
//  HomeViewController.swift
//  FinalPractice
//
//  Created by Himanshu Vaghela on 4/22/23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ProtocolUploadImage {

    
    var images: [UIImage] = [UIImage]()
    var locations = [String]()
    var imageTitles : [String] = [String]()

    
    @IBOutlet weak var tblView: UITableView!
    
    var uploadImageVC : UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        uploadImageVC = navigationController?.tabBarController?.viewControllers?[0]

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        imageTitles.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500;
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell

        cell.imgContainer.image = images[indexPath.row]
        cell.lblTitle.text = imageTitles[indexPath.row]
        
        cell.lblLocation.text = locations[indexPath.row]
        return cell
    }
    
    func uploadImageDelegate(img: UIImage, locationImg: String, titleImg: String) {
        images.append(img)
        locations.append(locationImg)
        imageTitles.append(titleImg)
        
        tblView.reloadData()
        

    }
    
    


}
