//
//  ViewController.swift
//  UshakovSV_HW2.2
//
//  Created by Сергей Ушаков on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {

    // IB Outlet

    @IBOutlet weak var viewWindow: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.value = 1
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
    }

    // IB Action
    @IBAction func redSliderAction() {
        let redSliderValue = CGFloat(redSlider.value)
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(redSliderValue)
    }
    @IBAction func greenSliderAction() {
    }
    @IBAction func blueSliderAction() {
    }
    
    
    
}

