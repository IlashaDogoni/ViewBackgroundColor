//
//  ViewController.swift
//  ViewBackgroundColor
//
//  Created by Ilya Kokorin on 11.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var slider1: UISlider!
    @IBOutlet var slider2: UISlider!
    @IBOutlet var slider3: UISlider!
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var colorView: UIView!
    @IBOutlet var heartLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        slider1.minimumValue = 0
        slider1.maximumValue = 255
        slider1.value = 255
        slider1.minimumTrackTintColor = .red
        slider2.minimumValue = 0
        slider2.maximumValue = 255
        slider2.value = 255
        slider2.minimumTrackTintColor = .green
        slider3.minimumValue = 0
        slider3.maximumValue = 255
        slider3.value = 255
        slider3.minimumTrackTintColor = .blue
        label1.text = String(Int(slider1.value))
        label2.text = String(Int(slider2.value))
        label3.text = String(Int(slider3.value))
        heartLabel.isHidden = true
       
        colorView.backgroundColor = UIColor(red: CGFloat(slider1.value)/255, green: CGFloat(slider2.value)/255, blue: CGFloat(slider3.value)/255, alpha: 1)
        
    }

    @IBAction func slider1Action(_ sender: Any) {
        colorView.backgroundColor = UIColor(red: CGFloat(slider1.value)/255, green: CGFloat(slider2.value)/255, blue: CGFloat(slider3.value)/255, alpha: 1)
        label1.text = String(Int(slider1.value))
    }
    
    @IBAction func slider2Action(_ sender: Any) {
        colorView.backgroundColor = UIColor(red: CGFloat(slider1.value)/255, green: CGFloat(slider2.value)/255, blue: CGFloat(slider3.value)/255, alpha: 1)
        label2.text = String(Int(slider2.value))
    }
    @IBAction func slider3Action(_ sender: Any) {
        colorView.backgroundColor = UIColor(red: CGFloat(slider1.value)/255, green: CGFloat(slider2.value)/255, blue: CGFloat(slider3.value)/255, alpha: 1)
        label3.text = String(Int(slider3.value))
    }
    @IBAction func buttonHeart(_ sender: Any) {
        heartLabel.isHidden = false
    }
}

