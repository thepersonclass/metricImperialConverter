//
//  VolumeConversionViewController.swift
//  MetricImperialConverter
//
//  Created by Daniel Favano on 8/17/19.
//  Copyright © 2019 Daniel Favano. All rights reserved.
//

import UIKit

class VolumeConversionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var fromPicker: UIPickerView!
    @IBOutlet weak var toPicker: UIPickerView!
    @IBOutlet weak var fromVolume: UITextField!
    @IBOutlet weak var convertedVolumeLabel: UILabel!
    
    var volumeData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Connect data:
        self.fromPicker.delegate = self
        self.fromPicker.dataSource = self
        self.toPicker.delegate = self
        self.fromPicker.dataSource = self
        
        // Input the data into the array
        volumeData = [Volume.VolumeType.Cup.rawValue, Volume.VolumeType.Deciliters.rawValue, Volume.VolumeType.Gallon.rawValue, Volume.VolumeType.Liters.rawValue, Volume.VolumeType.Milliliters.rawValue, Volume.VolumeType.Quart.rawValue]
    }
    
    @IBAction func handleConvertWeight(_ sender: Any) {
        
        let fromPickerValue = volumeData[fromPicker.selectedRow(inComponent: 0)]
        guard let fromVolumeValue = Float(fromVolume.text!) else { return }
        let toPickerValue = volumeData[toPicker.selectedRow(inComponent: 0)]
        
        guard let fromEnum = Volume.VolumeType(rawValue: fromPickerValue) else { return }
        guard let toEnum = Volume.VolumeType(rawValue: toPickerValue) else { return }
        
        let volume = Volume()
        let convertedVolume = volume.convertTo(from: (fromEnum, fromVolumeValue), to: toEnum)
        
        convertedVolumeLabel.text = String(format: "%.3f", convertedVolume)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return volumeData.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return volumeData[row]
    }
}
