//
//  ViewController.swift
//  UshakovSV_HW2.2
//
//  Created by Сергей Ушаков on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet weak var redSlider: UISlider! {
        didSet{
            redSlider.tintColor = UIColor.red }
    }
    @IBOutlet weak var greenSlider: UISlider! {
        didSet{
            greenSlider.tintColor = UIColor.green }
    }
    
@IBOutlet weak var blueSlider: UISlider! {
    didSet{
        blueSlider.tintColor = UIColor.blue }
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat((redSlider.value)), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func rgbSliderChange() {
        changeColor()
    }
}

