//
//  MetricSystemLength.swift
//  MetricImperialConverter
//
//  Created by Daniel Favano on 7/14/19.
//  Copyright © 2019 Daniel Favano. All rights reserved.
//

import Foundation

class MetricSystemLength {
  
    enum Length {
        case Millimeters
        case Centimeters
        case Meters
        case Kilometers
    }
    
    var Millimeters : Decimal = 0
    var Centimeters : Decimal = 0
    var Meters : Decimal = 0
    var Kilometers : Decimal = 0
    
    let imperialSystemLength = ImperialSystemLength()
    
    func convertToMetricLength(from: (ImperialSystemLength.Length,Decimal), to: Length) -> Decimal {
        
        switch from.0 {
        case ImperialSystemLength.Length.Inch:
            Millimeters = calculateInchToMillimeters(inches: from.1)
            Centimeters = calculateInchToCentimeters(inches: from.1)
            Meters = calculateInchToMeters(inches: from.1)
            Kilometers = calculateInchToKilometers(inches: from.1)
        case ImperialSystemLength.Length.Feet:
            Millimeters = calculateFeetToMillimeters(feet: from.1)
            Centimeters = calculateFeetToCentimeters(feet: from.1)
            Meters = calculateFeetToMeters(feet: from.1)
            Kilometers = calculateFeetToKilometers(feet: from.1)
        case ImperialSystemLength.Length.Yard:
            Millimeters = calculateYardToMillimeters(yards: from.1)
            Centimeters = calculateYardToCentimeters(yards: from.1)
            Meters = calculateYardToMeters(yards: from.1)
            Kilometers = calculateYardToKilometers(yards: from.1)
        case ImperialSystemLength.Length.Mile:
            Millimeters = calculateFeetToMillimeters(feet: from.1)
            Centimeters = calculateFeetToCentimeters(feet: from.1)
            Meters = calculateFeetToMeters(feet: from.1)
            Kilometers = calculateFeetToKilometers(feet: from.1)
        }
        
        switch to {
        case Length.Millimeters:
            return Millimeters
        case Length.Centimeters:
            return Centimeters
        case Length.Meters:
            return Meters
        case Length.Kilometers:
            return Kilometers
        }
    }
    
    private func calculateInchToMillimeters(inches: Decimal) -> Decimal {
        return inches * 25.4
    }
    
    private func calculateInchToCentimeters(inches: Decimal) -> Decimal {
        return inches * 2.54
    }
    
    private func calculateInchToMeters(inches: Decimal) -> Decimal {
        return inches * 0.0254
    }
    
    private func calculateInchToKilometers(inches: Decimal) -> Decimal {
        return inches * 0.000254
    }
    
    private func calculateFeetToMillimeters(feet: Decimal) -> Decimal {
        return feet * 304.8
    }
    
    private func calculateFeetToCentimeters(feet: Decimal) -> Decimal {
        return feet * 30.48
    }
    
    private func calculateFeetToMeters(feet: Decimal) -> Decimal {
        return feet * 0.3048
    }
    
    private func calculateFeetToKilometers(feet: Decimal) -> Decimal {
        return feet * 0.0003048
    }
    
    private func calculateYardToMillimeters(yards: Decimal) -> Decimal {
        return yards * 914.4
    }
    
    private func calculateYardToCentimeters(yards: Decimal) -> Decimal {
        return yards * 91.44
    }
    
    private func calculateYardToMeters(yards: Decimal) -> Decimal {
        return yards * 0.9144
    }
    
    private func calculateYardToKilometers(yards: Decimal) -> Decimal {
        return yards * 0.0009144
    }
    
    private func calculateMileToMillimeters(miles: Decimal) -> Decimal {
        return miles * 1.609e+6
    }
    
    private func calculateMileToCentimeters(miles: Decimal) -> Decimal {
        return miles * 160934
    }
    
    private func calculateMileToMeters(miles: Decimal) -> Decimal {
        return miles * 1609.34
    }
    
    private func calculateMileToKilometers(miles: Decimal) -> Decimal {
        return miles * 1.60934
    }
}
