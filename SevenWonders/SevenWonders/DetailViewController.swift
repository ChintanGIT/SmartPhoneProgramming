//
//  DetailViewController.swift
//  SevenWonders
//
//  Created by Himanshu Vagela on 3/18/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    // text change based on some logic
     
    @IBOutlet weak var detailContents: UITextView!
    
    var index = 0
    
    var details = ["Built by the famous Mughal Emperor, Shah Jahan for its favorite wife, Mumtaz Mahal, the iconic structure of Taj Mahal, is the pride of India and more importantly, an epitome of love. Built as early as in the 16th century, Taj Mahal is the crown of India which is constructed purely of ivory-white marble and is best witnessed during sunrise.",
        "Located atop the Corcovado Mountain in Tijuca Forest National Park, the wondrous statue of Christ the Redeemer is perched at a height of 700 metres. Overlooking the city of Rio de Janeiro and constructed during the period of 1922 to 1931, the statue is not only the symbol of Christian community but is also one of the iconic landmarks of Brazil and Rio.",
        "Stunning as it looks, Great Wall of China is one of the those 7 wonders of the world that need no introduction. Encompassing of defensive fortifications that are a perfect blend of bricks, rammed earth, wood, stones, and other substances, the Great Wall of China was built to protect the Chinese region from invasions of empires during 7th century BCE.",
        "Located in the southwestern desert of Jordan, Petra is the world-famous archaeological site that once served as the Nabatean Kingdom’s capital. Boasting of its one of a kind pink sandstone cliffs out of which the tombs and temples are sculpted, Al Khazneh is the most famous temple of all. Featuring a facade known as the Treasury, Petra reflects the authentic Greek architecture that attracts millions of travelers across the world.",
        "Perched high on the Andes Mountains and built of limestones that are mortar-free, Machu Picchu is one of the most classic 7 wonders of the world. Dating back to the 15th century, Machu Picchu in Peru is the most renowned structure of the Inca civilization which is famous for its dry-stone walls.",
        "The renowned structure of Mayan ruins, the city of Chichen Itza boasts of a World Heritage Site of a massive temple – El Castillo, built in the shape of a pyramid. Dedicated to the God of Kukulkan, the structure consists of 91 steps on each side which when totalled with the final step of the temple, equals the number of days in one Haab year, i.e., 365 days.",
        "One of the major tourist attractions of Rome, the Colosseum is indeed one of the iconic 7 wonders of the world. Constructed mainly of sand and concrete, Colosseum is the largest surviving amphitheatre in the world. Built during the time between 70 AD to 72 AD by the famous Emperor Vespasian, Colosseum is much famed as the Flavian Amphitheatre that continues to charm the travellers today."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        detailContents.text = details[index]
    }
    
    
}
