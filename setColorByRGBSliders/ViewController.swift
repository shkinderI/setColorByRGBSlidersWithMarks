//
//  ViewController.swift
//  setColorByRGBSliders
//
//  Created by Ilia on 30.07.23.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var colorArea: UIView!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    @IBOutlet var valueRed: UILabel!
    @IBOutlet var valueGreen: UILabel!
    @IBOutlet var valueBlue: UILabel!
    
    // MARK: - View life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        colorArea.layer.cornerRadius = 10
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        settingValues()
    }
    
    //MARK: - IB Actions
    @IBAction func myChanger(_ sender: Any) {
        colorArea.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
        valueRed.text = sliderRed.value.formatted()
    }
    
    @IBAction func myChangerForGreen(_ sender: Any) {
        colorArea.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
        valueGreen.text = sliderGreen.value.formatted()
    }
    
    
    @IBAction func myChangerForBlue(_ sender: Any) {
        colorArea.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
        valueBlue.text = sliderBlue.value.formatted()
    }
    
    // MARK: - Private Methods
    private func setupRedSlider() {
        sliderRed.maximumValue = 0
        sliderRed.maximumValue = 1
        sliderRed.minimumTrackTintColor = .red
    }
    private func setupGreenSlider() {
        sliderGreen.maximumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.minimumTrackTintColor = .green
    }
    private func setupBlueSlider() {
        sliderBlue.maximumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.minimumTrackTintColor = .blue
    }
    
    private func settingValues() {
        valueRed.text = sliderRed.value.formatted()
        valueGreen.text = sliderGreen.value.formatted()
        valueBlue.text = sliderBlue.value.formatted()
        
    }
    
}

