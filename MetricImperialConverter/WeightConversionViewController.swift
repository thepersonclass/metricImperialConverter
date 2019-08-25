//
//  WeightConversionViewController.swift
//  MetricImperialConverter
//
//  Created by Daniel Favano on 8/8/19.
//  Copyright © 2019 Daniel Favano. All rights reserved.
//

import UIKit

class WeightConversionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var fromPicker: UIPickerView!
    @IBOutlet weak var toPicker: UIPickerView!
    @IBOutlet weak var fromWeight: UITextField!
    @IBOutlet weak var convertedWeightLabel: UILabel!
    
    var weightData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Connect data:
        self.fromPicker.delegate = self
        self.fromPicker.dataSource = self
        self.toPicker.delegate = self
        self.fromPicker.dataSource = self
        
        // Input the data into the array
        weightData = [Weight.WeightType.Grams.rawValue, Weight.WeightType.Kilograms.rawValue, Weight.WeightType.Milligrams.rawValue, Weight.WeightType.Ounce.rawValue, Weight.WeightType.Pound.rawValue, Weight.WeightType.Stone.rawValue,
            Weight.WeightType.Ton.rawValue]
    }
    
    @IBAction func handleConvertWeight(_ sender: Any) {
        
        let fromPickerValue = weightData[fromPicker.selectedRow(inComponent: 0)]
        guard let fromWeightValue = Float(fromWeight.text!) else { return }
        let toPickerValue = weightData[toPicker.selectedRow(inComponent: 0)]
        
        guard let fromEnum = Weight.WeightType(rawValue: fromPickerValue) else { return }
        guard let toEnum = Weight.WeightType(rawValue: toPickerValue) else { return }

        let weight = Weight()
        let convertedWeight = weight.convertTo(from: (fromEnum, fromWeightValue), to: toEnum)

        convertedWeightLabel.text = String(format: "%.3f", convertedWeight)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return weightData.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return weightData[row]
    }
}
