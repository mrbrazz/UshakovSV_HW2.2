//
//  ViewController.swift
//  UshakovSV_HW2.2
//
//  Created by Сергей Ушаков on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK - IB Outlet
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLable: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSliderValue: UILabel!
    @IBOutlet weak var greenSliderValue: UILabel!
    @IBOutlet weak var blueSliderValue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK - Red Properties
        redLabel.text = "Red"
        redLabel.textColor = .red
        redSlider.tintColor = .red
        redSliderValue.text = String(redSlider.value)
        
        //MARK - Green Properties
        greenLable.text = "Green"
        greenLable.textColor = .green
        greenSlider.tintColor = .green
        greenSliderValue.text = String(greenSlider.value)
        
        //MARK - Blue Properties
        blueLabel.text = "Blue"
        blueLabel.textColor = .blue
        blueSlider.tintColor = .blue
        blueSliderValue.text = String(blueSlider.value)
        
    }
    
    func changeSliderValue() {
        redSliderValue.text = String(redSlider.value)
        greenSliderValue.text = String(greenSlider.value)
        blueSliderValue.text = String(blueSlider.value)
    }
    
   func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat((redSlider.value)), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    //MARK - IB Action
    @IBAction func rgbSliderChange() {
        changeColor()
        changeSliderValue()
    }
}

