//
//  ImperialSystemLength.swift
//  MetricImperialConverter
//
//  Created by Daniel Favano on 7/14/19.
//  Copyright © 2019 Daniel Favano. All rights reserved.
//

import Foundation

class ImperialSystemLength {
    
    //Length
    enum Length {
        case Inch
        case Feet
        case Yard
        case Mile
    }
    
    var Inch : Decimal = 0
    var Feet : Decimal = 0
    var Yard : Decimal = 0
    var Mile : Decimal = 0
    
    let metricSystemLength = MetricSystemLength()
    
    func convertToImperialLength(from: (MetricSystemLength.Length,Decimal), to: Length) -> Decimal {
        
        switch from.0 {
        case MetricSystemLength.Length.Millimeters:
            Inch = calculateMillimetersToInch(millimeters: from.1)
            Feet = calculateMillimetersToFeet(millimeters: from.1)
            Yard = calculateMillimetersToYard(millimeters: from.1)
            Mile = calculateMillimetersToMile(millimeters: from.1)
        case MetricSystemLength.Length.Centimeters:
            Inch = calculateCentimetersToInch(centimeters: from.1)
            Feet = calculateCentimetersToFeet(centimeters: from.1)
            Yard = calculateCentimetersToYard(centimeters: from.1)
            Mile = calculateCentimetersToMile(centimeters: from.1)
        case MetricSystemLength.Length.Meters:
            Inch = calculateMetersToInch(meters: from.1)
            Feet = calculateMetersToFeet(meters: from.1)
            Yard = calculateMetersToYard(meters: from.1)
            Mile = calculateMetersToMile(meters: from.1)
        case MetricSystemLength.Length.Kilometers:
            Inch = calculateKilometersToInch(kilometers: from.1)
            Feet = calculateKilometersToFeet(kilometers: from.1)
            Yard = calculateKilometersToYard(kilometers: from.1)
            Mile = calculateKilometersToMile(kilometers: from.1)
        }
        
        switch to {
        case Length.Inch:
            return Inch
        case Length.Feet:
            return Feet
        case Length.Yard:
            return Yard
        case Length.Mile:
            return Mile
        }
    }
    
    private func calculateMillimetersToInch(millimeters: Decimal) -> Decimal {
       return millimeters / 25.4
    }
    
    private func calculateMillimetersToFeet(millimeters: Decimal) -> Decimal {
        return millimeters / 304.8
    }
    
    private func calculateMillimetersToYard(millimeters: Decimal) -> Decimal {
        return millimeters / 914.4
    }
    
    private func calculateMillimetersToMile(millimeters: Decimal) -> Decimal {
        return millimeters * 6.2137e-7
    }
    
    private func calculateCentimetersToInch(centimeters: Decimal) -> Decimal {
        return centimeters * 0.393701
    }
    
    private func calculateCentimetersToFeet(centimeters: Decimal) -> Decimal {
        return centimeters * 0.0328084
    }
    
    private func calculateCentimetersToYard(centimeters: Decimal) -> Decimal {
        return centimeters * 0.0109361
    }
    
    private func calculateCentimetersToMile(centimeters: Decimal) -> Decimal {
        return centimeters * 6.2137e-6
    }
    
    private func calculateMetersToInch(meters: Decimal) -> Decimal {
        return meters * 39.3701
    }
    
    private func calculateMetersToFeet(meters: Decimal) -> Decimal {
        return meters * 3.28084
    }
    
    private func calculateMetersToYard(meters: Decimal) -> Decimal {
        return meters * 1.09361
    }
    
    private func calculateMetersToMile(meters: Decimal) -> Decimal {
        return meters * 0.000621371
    }
    
    private func calculateKilometersToInch(kilometers: Decimal) -> Decimal {
        return kilometers * 39370.1
    }
    
    private func calculateKilometersToFeet(kilometers: Decimal) -> Decimal {
        return kilometers * 3280.84
    }
    
    private func calculateKilometersToYard(kilometers: Decimal) -> Decimal {
        return kilometers * 1093.61
    }
    
    private func calculateKilometersToMile(kilometers: Decimal) -> Decimal {
        return kilometers * 0.621371
    }
}
