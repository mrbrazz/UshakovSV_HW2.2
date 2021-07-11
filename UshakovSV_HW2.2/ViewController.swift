//
//  ViewController.swift
//  UshakovSV_HW2.2
//
//  Created by Сергей Ушаков on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IB Outlet
    @IBOutlet weak var colorView: UIView!
    

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLable: UILabel!
    @IBOutlet weak var greenLable: UILabel!
    @IBOutlet weak var blueLable: UILabel!
    
    @IBOutlet weak var redSliderValue: UILabel!
    @IBOutlet weak var greenSliderValue: UILabel!
    @IBOutlet weak var blueSliderValue: UILabel!
    
    
    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    

    //MARK: - Functions
    func changeSliderValue() {
        redSliderValue.text = String(format: "%.2f", redSlider.value)
        greenSliderValue.text = String(format: "%.2f", greenSlider.value)
        blueSliderValue.text = String(format: "%.2f", blueSlider.value)
    }
    
   func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat((redSlider.value)), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    //MARK: - Private Methods
    private func setupUI() {
        colorView.layer.cornerRadius = 20
        
        //MARK: - Red Properties
        redLable.text = "Red"
        redLable.textColor = .red
        redSlider.tintColor = .red
        redSliderValue.text = String(redSlider.value)
        
        //MARK: - Green Properties
        greenLable.text = "Green"
        greenLable.textColor = .green
        greenSlider.tintColor = .green
        greenSliderValue.text = String(greenSlider.value)
        
        //MARK: - Blue Properties
        blueLable.text = "Blue"
        blueLable.textColor = .blue
        blueSlider.tintColor = .blue
        blueSliderValue.text = String(blueSlider.value)
    }
    
    //MARK: - IB Action
    @IBAction func rgbSliderChange() {
        changeColor()
        changeSliderValue()
    }
}

