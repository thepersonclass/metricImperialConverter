//
//  LengthConversionViewController.swift
//  MetricImperialConverter
//
//  Created by Daniel Favano on 8/19/19.
//  Copyright © 2019 Daniel Favano. All rights reserved.
//

import UIKit

class LengthConversionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var fromPicker: UIPickerView!
    @IBOutlet weak var toPicker: UIPickerView!
    @IBOutlet weak var fromLength: UITextField!
    @IBOutlet weak var convertedLengthLabel: UILabel!
     
    var lengthData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Connect data:
        self.fromPicker.delegate = self
        self.fromPicker.dataSource = self
        self.toPicker.delegate = self
        self.fromPicker.dataSource = self
        
        // Input the data into the array
        lengthData = [Length.LengthType.Centimeters.rawValue, Length.LengthType.Feet.rawValue, Length.LengthType.Inch.rawValue, Length.LengthType.Kilometers.rawValue, Length.LengthType.Meters.rawValue, Length.LengthType.Mile.rawValue, Length.LengthType.Millimeters.rawValue]
    }
    
    @IBAction func handleConvertWeight(_ sender: Any) {
        
        let fromPickerValue = lengthData[fromPicker.selectedRow(inComponent: 0)]
        guard let fromlengthValue = Float(fromLength.text!) else { return }
        let toPickerValue = lengthData[toPicker.selectedRow(inComponent: 0)]
        
        guard let fromEnum = Length.LengthType(rawValue: fromPickerValue) else { return }
        guard let toEnum = Length.LengthType(rawValue: toPickerValue) else { return }
        
        let length = Length()
        let convertedlength = length.convertTo(from: (fromEnum, fromlengthValue), to: toEnum)
        
        convertedLengthLabel.text = String(format: "%.3f", convertedlength)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return lengthData.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return lengthData[row]
    }
}

