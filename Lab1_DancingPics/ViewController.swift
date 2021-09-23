//
//  ViewController.swift
//  Lab1_DancingPics
//
//  Created by Trevor Jedziniak on 9/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changinglabel: UILabel!
    @IBOutlet weak var artImage: UIImageView!
    @IBAction func chooseDance(_ sender: UIButton) {
        if sender.tag == 1{
            artImage.image = UIImage(named: "squat")
            changinglabel.text = "yeah..."
        }
        else if sender.tag == 2{
            artImage.image = UIImage(named: "headbob")
            changinglabel.text = "Ohh..."
        }
        else if sender.tag == 3{
            artImage.image = UIImage(named: "michael")
            changinglabel.text = "Michael!"
        }
    
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

