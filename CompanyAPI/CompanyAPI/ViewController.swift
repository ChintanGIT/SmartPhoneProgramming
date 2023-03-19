//
//  ViewController.swift
//  CompanyAPI
//
//  Created by Himanshu Vaghela on 3/18/23.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var companySymbol: UITextField!
    
    @IBOutlet weak var companyWebsite: UILabel!
    @IBOutlet weak var companyPrice: UILabel!
    @IBOutlet weak var companyName: UILabel!
    
    
    @IBAction func GetCompanyInfo(_ sender: Any) {
        guard let symbol = companySymbol.text else {return}
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        AF.request(url).responseJSON { response in
            switch response.result {
            case .success(let value):
                print("Response: \(value)")
                guard let jsonArray = JSON(value).array else {return}
                guard let stock = jsonArray.first else {return}
                print(stock["companyName"])
                print(stock["price"])
                print(stock["website"])
                self.companyName.text = stock["companyName"].stringValue
                self.companyPrice.text = stock["price"].stringValue
                self.companyWebsite.text = stock["website"].stringValue
            case .failure(let error):
                print("Error: \(error)")
            }
        }
        
    }
}

