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
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var capitalSwitch: UISwitch!
    @IBOutlet weak var animationSlider: UISlider!
    @IBOutlet weak var colorSwitch: UISwitch!
    
    
    func updateImage(){
        if imageControl.selectedSegmentIndex == 0 {
            changinglabel.text="Michael!"
            artImage.image=UIImage(named: "michael")
        }
        else if imageControl.selectedSegmentIndex == 1 {
            changinglabel.text="Ohh Yea"
            artImage.image=UIImage(named: "squat")
        }
    }
    func updateColor() {
        if colorSwitch.isOn {
            changinglabel.textColor = UIColor.blue
        } else {
            changinglabel.textColor = UIColor.black
        }
    }
    
    func updateCaps(){
        if capitalSwitch.isOn {
            changinglabel.text=changinglabel.text?.uppercased()
        } else {
            changinglabel.text=changinglabel.text?.lowercased()
        }
    }
    @IBAction func updateFont(_ sender: UISwitch) {
        updateCaps()
    }
    @IBAction func changeFontSize(_ sender: UISlider) {
        let fontSize=sender.value //float
        
        let fontSizeCGFloat=CGFloat(fontSize) //create a CGFloat from a float
        changinglabel.font=UIFont.systemFont(ofSize: fontSizeCGFloat)
    }
    
    @IBAction func updateDanceFrame(_ sender: UISlider) {
        if imageControl.selectedSegmentIndex == 0 {
            var frame = Int(sender.value) % 15
            var framename = String("m-\(frame)" )
            artImage.image=UIImage(named: framename)
        }
        else if imageControl.selectedSegmentIndex == 1 {
            var frame = Int(sender.value) % 2 + 1
            var framename = String("squat\(frame)" )
            artImage.image=UIImage(named: framename)
        }
        
        
    }
    @IBAction func changeColor(_ sender: UISwitch) {
        updateColor()
    }
    @IBAction func chooseDance(_ sender: UISegmentedControl) {
        updateImage()
        updateCaps()
        //        if sender.tag == 1{
        //            artImage.image = UIImage(named: "squat")
        //            changinglabel.text = "yeah..."
        //        }
        //        else if sender.tag == 2{
        //            artImage.image = UIImage(named: "headbob")
        //            changinglabel.text = "Ohh..."
        //        }
        //        else if sender.tag == 3{
        //            artImage.image = UIImage(named: "michael")
        //            changinglabel.text = "Michael!"
        //        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

