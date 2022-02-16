//
//  ViewController.swift
//  CengedColor
//
//  Created by Dannek on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
        
        colorView.layer.cornerRadius = 15
    }

    @IBAction func rgbSlidersChanges(_ sender: UISlider) {
        changedColor()
        switch sender {
        case redSlider:
            redLabel.text = String(redSlider.value)
        case greenSlider:
            greenLabel.text = String(greenSlider.value)
        default:
            blueLabel.text = String(blueSlider.value)
        }
    }
    func changedColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
   
    
}

