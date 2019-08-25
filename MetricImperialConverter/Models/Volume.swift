//
//  Volume.swift
//  MetricImperialConverter
//
//  Created by Daniel Favano on 8/17/19.
//  Copyright © 2019 Daniel Favano. All rights reserved.
//

import Foundation

class Volume {
    
    enum VolumeType : String {
        case Milliliters
        case Deciliters
        case Liters
        case Teaspoon
        case Tablespoon
        case Cup
        case Quart
        case Gallon
    }
    
    var Milliliters : Float = 0
    var Deciliters : Float = 0
    var Liters : Float = 0
    var Teaspoon : Float = 0
    var Tablespoon : Float = 0
    var Cup : Float = 0
    var Quart : Float = 0
    var Gallon : Float = 0

    func convertTo(from: (VolumeType, Float), to: VolumeType) -> Float {
        
        switch from.0 {
        case VolumeType.Teaspoon:
            Milliliters = calculateTeaspoonToMilliliters(teaspoon: from.1)
            Deciliters = calculateTeaspoonToDeciliters(teaspoon: from.1)
            Liters = calculateTeaspoonToLiters(teaspoon: from.1)
            Teaspoon = from.1
            Tablespoon = calculateTeaspoonToTablespoon(teaspoon: from.1)
            Cup = calculateTeaspoonToCup(teaspoon: from.1)
            Quart = calculateTeaspoonToQuart(teaspoon: from.1)
            Gallon = calculateTeaspoonToGallon(teaspoon: from.1)
        case VolumeType.Tablespoon:
            Milliliters = calculateTablespoonToMilliliters(tablespoon: from.1)
            Deciliters = calculateTablespoonToDeciliters(tablespoon: from.1)
            Liters = calculateTablespoonToLiters(tablespoon: from.1)
            Teaspoon = calculateTablespoonToTeaspoon(tablespoon: from.1)
            Tablespoon = from.1
            Cup = calculateTablespoonToCup(tablespoon: from.1)
            Quart = calculateTablespoonToQuart(tablespoon: from.1)
            Gallon = calculateTablespoonToGallon(tablespoon: from.1)
        case VolumeType.Cup:
            Milliliters = calculateCupToMilliliters(cup: from.1)
            Deciliters = calculateCupToDeciliters(cup: from.1)
            Liters = calculateCupToLiters(cup: from.1)
            Teaspoon = calculateCupToTeaspoon(cup: from.1)
            Tablespoon = calculateCupToTablespoon(cup: from.1)
            Cup = from.1
            Quart = calculateCupToQuart(cup: from.1)
            Gallon = calculateCupToGallon(cup: from.1)
        case VolumeType.Quart:
            Milliliters = calculateQuartToMilliliters(quart: from.1)
            Deciliters = calculateQuartToDeciliters(quart: from.1)
            Liters = calculateQuartToLiters(quart: from.1)
            Teaspoon = calculateQuartToTeaspoon(quart: from.1)
            Tablespoon = calculateQuartToTablespoon(quart: from.1)
            Cup = calculateQuartToCup(quart: from.1)
            Quart = from.1
            Gallon = calculateQuartToGallon(quart: from.1)
        case VolumeType.Gallon:
            Milliliters = calculateGallonToMilliliters(gallon: from.1)
            Deciliters = calculateGallonToDeciliters(gallon: from.1)
            Liters = calculateGallonToLiters(gallon: from.1)
            Teaspoon = calculateGallonToTeaspoon(gallon: from.1)
            Tablespoon = calculateGallonToTablespoon(gallon: from.1)
            Cup = calculateGallonToCup(gallon: from.1)
            Quart = calculateGallonToQuart(gallon: from.1)
            Gallon = from.1
        case VolumeType.Milliliters:
            Milliliters = from.1
            Deciliters = calculateGallonToDeciliters(gallon: from.1)
            Liters = calculateGallonToLiters(gallon: from.1)
            Teaspoon = calculateMillilitersToTeaspoon(millileters: from.1)
            Tablespoon = calculateMillilitersToTablespoon(millileters: from.1)
            Cup = calculateMillilitersToCup(millileters: from.1)
            Quart = calculateMillilitersToQuart(millileters: from.1)
            Gallon = calculateMillilitersToGallon(millileters: from.1)
        case VolumeType.Liters:
            Milliliters = calculateGallonToMilliliters(gallon: from.1)
            Deciliters = calculateGallonToDeciliters(gallon: from.1)
            Liters = from.1
            Teaspoon = calculateMillilitersToTeaspoon(millileters: from.1)
            Tablespoon = calculateMillilitersToTablespoon(millileters: from.1)
            Cup = calculateMillilitersToCup(millileters: from.1)
            Quart = calculateMillilitersToQuart(millileters: from.1)
            Gallon = calculateMillilitersToGallon(millileters: from.1)
        case VolumeType.Deciliters:
            Milliliters = calculateGallonToMilliliters(gallon: from.1)
            Deciliters = from.1
            Liters = calculateGallonToLiters(gallon: from.1)
            Teaspoon = calculateMillilitersToTeaspoon(millileters: from.1)
            Tablespoon = calculateMillilitersToTablespoon(millileters: from.1)
            Cup = calculateMillilitersToCup(millileters: from.1)
            Quart = calculateMillilitersToQuart(millileters: from.1)
            Gallon = calculateMillilitersToGallon(millileters: from.1)
        }
        
        switch to {
        case VolumeType.Milliliters:
            return Milliliters
        case VolumeType.Deciliters:
            return Deciliters
        case VolumeType.Liters:
            return Liters
        case VolumeType.Teaspoon:
            return Teaspoon
        case VolumeType.Tablespoon:
            return Tablespoon
        case VolumeType.Cup:
            return Cup
        case VolumeType.Quart:
            return Quart
        case VolumeType.Gallon:
            return Gallon
        }
    }
    
    private func calculateTeaspoonToMilliliters(teaspoon: Float) -> Float {
        return teaspoon * 5.91939
    }
    
    private func calculateTeaspoonToTablespoon(teaspoon: Float) -> Float {
        return teaspoon * 0.333333
    }
    
    private func calculateTeaspoonToCup(teaspoon: Float) -> Float {
        return teaspoon * 0.0173474
    }
    
    private func calculateTeaspoonToQuart(teaspoon: Float) -> Float {
        return teaspoon * 0.00433684
    }
    
    private func calculateTablespoonToMilliliters(tablespoon: Float) -> Float {
        return tablespoon * 17.7582
    }
    
    private func calculateTablespoonToCup(tablespoon: Float) -> Float {
        return tablespoon * 0.0625
    }
    
    private func calculateTablespoonToQuart(tablespoon: Float) -> Float {
        return tablespoon * 0.015625
    }
    
    private func calculateTablespoonToGallon(tablespoon: Float) -> Float {
        return tablespoon * 0.00390625
    }
    
    private func calculateTeaspoonToGallon(teaspoon: Float) -> Float {
        return teaspoon * 0.00108421
    }
    
    private func calculateCupToMilliliters(cup: Float) -> Float {
        return cup * 284.131
    }
    
    private func calculateQuartToMilliliters(quart: Float) -> Float {
        return quart * 1136.52
    }
    
    private func calculateQuartToTeaspoon(quart: Float) -> Float {
        return quart * 192
    }
    
    private func calculateQuartToTablespoon(quart: Float) -> Float {
        return quart * 64
    }
    
    private func calculateQuartToCup(quart: Float) -> Float {
        return quart * 4
    }
    
    private func calculateQuartToGallon(quart: Float) -> Float {
        return quart * 0.25
    }
    
    private func calculateGallonToMilliliters(gallon: Float) -> Float {
        return gallon * 4546.09
    }
    
    private func calculateGallonToTeaspoon(gallon: Float) -> Float {
        return gallon * 768
    }
    
    private func calculateGallonToTablespoon(gallon: Float) -> Float {
        return gallon * 256
    }
    
    private func calculateGallonToCup(gallon: Float) -> Float {
        return gallon * 16
    }
    
    private func calculateGallonToQuart(gallon: Float) -> Float {
        return gallon * 4
    }
    
    private func calculateTeaspoonToDeciliters(teaspoon: Float) -> Float {
        return teaspoon * 0.0591939
    }
    
    private func calculateTablespoonToDeciliters(tablespoon: Float) -> Float {
        return tablespoon * 0.177582
    }
    
    private func calculateTablespoonToTeaspoon(tablespoon: Float) -> Float {
        return tablespoon * 3.60285
    }
    
    private func calculateCupToDeciliters(cup: Float) -> Float {
        return cup * 2.84131
    }
    
    private func calculateQuartToDeciliters(quart: Float) -> Float {
        return quart * 11.3652
    }
    
    private func calculateGallonToDeciliters(gallon: Float) -> Float {
        return gallon * 45.4609
    }
    
    private func calculateTeaspoonToLiters(teaspoon: Float) -> Float {
        return teaspoon * 0.00591939
    }
    
    private func calculateTablespoonToLiters(tablespoon: Float) -> Float {
        return tablespoon * 0.0177582
    }
    
    private func calculateCupToLiters(cup: Float) -> Float {
        return cup * 0.284131
    }
    
    private func calculateCupToTeaspoon(cup: Float) -> Float {
        return cup * 57.6456
    }
    
    private func calculateCupToTablespoon(cup: Float) -> Float {
        return cup * 19.2152
    }
    
    private func calculateCupToQuart(cup: Float) -> Float {
        return cup * 0.25
    }
    
    private func calculateCupToGallon(cup: Float) -> Float {
        return cup * 0.0625
    }
    
    private func calculateQuartToLiters(quart: Float) -> Float {
        return quart * 1.13652
    }
    
    private func calculateGallonToLiters(gallon: Float) -> Float {
        return gallon * 4.54609
    }
    
    private func calculateMillilitersToTeaspoon(millileters: Float) -> Float {
        return millileters * 0.20288
    }
    
    private func calculateMillilitersToTablespoon(millileters: Float) -> Float {
        return millileters * 0.067628
    }
    
    private func calculateMillilitersToCup(millileters: Float) -> Float {
        return millileters * 0.00416667
    }
    
    private func calculateMillilitersToQuart(millileters: Float) -> Float {
        return millileters * 0.00105668905478
    }
    
    private func calculateMillilitersToGallon(millileters: Float) -> Float {
        return millileters * 0.0002641722636949999899
    }
    
    private func calculateLitersToTeaspoon(liters: Float) -> Float {
        return liters * 168.936
    }
    
    private func calculateLitersToTablespoon(liters: Float) -> Float {
        return liters * 56.3121
    }
    
    private func calculateLitersToCup(liters: Float) -> Float {
        return liters * 3.51951
    }
    
    private func calculateLitersToQuart(liters: Float) -> Float {
        return liters * 0.879877
    }
    
    private func calculateLitersToGallon(liters: Float) -> Float {
        return liters * 0.219969
    }
    
    private func calculateDecilitersToTeaspoon(deciliters: Float) -> Float {
        return deciliters * 20
    }
    
    private func calculateDecilitersToTablespoon(deciliters: Float) -> Float {
        return deciliters * 5.63121
    }
    
    private func calculateDecilitersToCup(deciliters: Float) -> Float {
        return deciliters * 0.351951
    }
    
    private func calculateDecilitersToQuart(deciliters: Float) -> Float {
        return deciliters * 0.0879877
    }
    
    private func calculateDecilitersToGallon(deciliters: Float) -> Float {
        return deciliters * 0.0219969
    }
}
