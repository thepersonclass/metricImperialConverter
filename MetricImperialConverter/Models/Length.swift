//
//  Length.swift
//  MetricImperialConverter
//
//  Created by Daniel Favano on 8/20/19.
//  Copyright © 2019 Daniel Favano. All rights reserved.
//

import Foundation

class Length {
    
    enum LengthType : String {
        case Millimeters
        case Centimeters
        case Meters
        case Kilometers
        case Inch
        case Feet
        case Yard
        case Mile
    }
    
    var Millimeters : Float = 0
    var Centimeters : Float = 0
    var Meters : Float = 0
    var Kilometers : Float = 0
    var Inch : Float = 0
    var Feet : Float = 0
    var Yard : Float = 0
    var Mile : Float = 0
    
    func convertTo(from: (LengthType, Float), to: LengthType) -> Float {
        
        switch from.0 {
        case LengthType.Millimeters:
            Millimeters = from.1
            Centimeters = calculateMillimetersToCentimeters(millimeters: from.1)
            Meters = calculateMillimetersToMeters(millimeters: from.1)
            Kilometers = calculateMillimetersToKilometers(millimeters: from.1)
            Inch = calculateMillimetersToInch(millimeters: from.1)
            Feet = calculateMillimetersToFeet(millimeters: from.1)
            Yard = calculateMillimetersToYard(millimeters: from.1)
            Mile = calculateMillimetersToMile(millimeters: from.1)
        case LengthType.Centimeters:
            Millimeters = calculateCentimetersToMillimeters(centimeters: from.1)
            Centimeters = from.1
            Meters = calculateCentimetersToMeters(centimeters: from.1)
            Kilometers = calculateCentimetersToKilometers(centimeters: from.1)
            Inch = calculateCentimetersToInch(centimeters: from.1)
            Feet = calculateCentimetersToFeet(centimeters: from.1)
            Yard = calculateCentimetersToYard(centimeters: from.1)
            Mile = calculateCentimetersToMile(centimeters: from.1)
        case LengthType.Meters:
            Millimeters = calculateMetersToMillimeters(meters: from.1)
            Centimeters = calculateMetersToCentimeters(meters: from.1)
            Meters = from.1
            Kilometers = calculateMetersToKilometers(meters: from.1)
            Inch = calculateMetersToInch(meters: from.1)
            Feet = calculateMetersToFeet(meters: from.1)
            Yard = calculateMetersToYard(meters: from.1)
            Mile = calculateMetersToMile(meters: from.1)
        case LengthType.Kilometers:
            Millimeters = calculateKilometersToMillimeters(kilometers: from.1)
            Centimeters = calculateKilometersToCentimeters(kilometers: from.1)
            Meters = calculateKilometersToMeters(kilometers: from.1)
            Kilometers = from.1
            Inch = calculateKilometersToInch(kilometers: from.1)
            Feet = calculateKilometersToFeet(kilometers: from.1)
            Yard = calculateKilometersToYard(kilometers: from.1)
            Mile = calculateKilometersToMile(kilometers: from.1)
        case LengthType.Inch:
            Millimeters = calculateInchToMillimeters(inches: from.1)
            Centimeters = calculateInchToCentimeters(inches: from.1)
            Meters = calculateInchToMeters(inches: from.1)
            Kilometers = calculateInchToKilometers(inches: from.1)
            Inch = from.1
            Feet = calculateInchToFeet(inches: from.1)
            Yard = calculateInchToYard(inches: from.1)
            Mile = calculateInchToMiles(inches: from.1)
        case LengthType.Feet:
            Millimeters = calculateFeetToMillimeters(feet: from.1)
            Centimeters = calculateFeetToCentimeters(feet: from.1)
            Meters = calculateFeetToMeters(feet: from.1)
            Kilometers = calculateFeetToKilometers(feet: from.1)
            Inch = calculateFeetToInch(feet: from.1)
            Feet = from.1
            Yard = calculateFeetToYards(feet: from.1)
            Mile = calculateFeetToMiles(feet: from.1)
        case LengthType.Yard:
            Millimeters = calculateYardToMillimeters(yards: from.1)
            Centimeters = calculateYardToCentimeters(yards: from.1)
            Meters = calculateYardToMeters(yards: from.1)
            Kilometers = calculateYardToKilometers(yards: from.1)
            Inch = calculateYardToInches(yards: from.1)
            Feet = calculateYardToFeet(yards: from.1)
            Yard = from.1
            Mile = calculateYardToMiles(yards: from.1)
        case LengthType.Mile:
            Millimeters = calculateMileToMillimeters(miles: from.1)
            Centimeters = calculateMileToCentimeters(miles: from.1)
            Meters = calculateMileToMeters(miles: from.1)
            Kilometers = calculateMileToKilometers(miles: from.1)
            Inch = calculateMileToInches(miles: from.1)
            Feet = calculateMileToFeet(miles: from.1)
            Yard = calculateMileToYards(miles: from.1)
            Mile = from.1
        }
        
        switch to {
        case LengthType.Millimeters:
            return Millimeters
        case LengthType.Centimeters:
            return Centimeters
        case LengthType.Meters:
            return Meters
        case LengthType.Kilometers:
            return Kilometers
        case LengthType.Inch:
            return Inch
        case LengthType.Feet:
            return Feet
        case LengthType.Yard:
            return Yard
        case LengthType.Mile:
            return Mile
        }
    }
    
    private func calculateInchToMillimeters(inches: Float) -> Float {
        return inches * 25.4
    }
    
    private func calculateInchToFeet(inches: Float) -> Float {
        return inches / 12
    }
    
    private func calculateInchToCentimeters(inches: Float) -> Float {
        return inches * 2.54
    }
    
    private func calculateInchToYard(inches: Float) -> Float {
        return inches * 0.0277778
    }
    
    private func calculateInchToMeters(inches: Float) -> Float {
        return inches * 0.0254
    }
    
    private func calculateInchToKilometers(inches: Float) -> Float {
        return inches * 0.000254
    }
    
    private func calculateInchToMiles(inches: Float) -> Float {
        return inches * 1.5783e-5
    }
    
    private func calculateFeetToInch(feet: Float) -> Float {
        return feet * 12
    }
    
    private func calculateFeetToYards(feet: Float) -> Float {
        return feet * 0.333333
    }
    
    private func calculateFeetToMillimeters(feet: Float) -> Float {
        return feet * 304.8
    }
    
    private func calculateFeetToCentimeters(feet: Float) -> Float {
        return feet * 30.48
    }
    
    private func calculateFeetToMeters(feet: Float) -> Float {
        return feet * 0.3048
    }
    
    private func calculateFeetToMiles(feet: Float) -> Float {
        return feet * 0.000189394
    }
    
    private func calculateMillimetersToInch(millimeters: Float) -> Float {
        return millimeters / 25.4
    }
    
    private func calculateMillimetersToFeet(millimeters: Float) -> Float {
        return millimeters / 304.8
    }
    
    private func calculateMillimetersToYard(millimeters: Float) -> Float {
        return millimeters / 914.4
    }
    
    private func calculateMillimetersToMile(millimeters: Float) -> Float {
        return millimeters * 6.2137e-7
    }
    
    private func calculateCentimetersToMillimeters(centimeters: Float) -> Float {
        return centimeters * 10
    }

    private func calculateCentimetersToInch(centimeters: Float) -> Float {
        return centimeters * 0.393701
    }
    
    private func calculateCentimetersToFeet(centimeters: Float) -> Float {
        return centimeters * 0.0328084
    }
    
    private func calculateCentimetersToMeters(centimeters: Float) -> Float {
        return centimeters * 0.01
    }
    
    private func calculateCentimetersToKilometers(centimeters: Float) -> Float {
        return centimeters * 1e-5
    }
    
    private func calculateCentimetersToYard(centimeters: Float) -> Float {
        return centimeters * 0.0109361
    }
    
    private func calculateCentimetersToMile(centimeters: Float) -> Float {
        return centimeters * 6.2137e-6
    }
    
    private func calculateMetersToCentimeters(meters: Float) -> Float {
        return meters * 100
    }
    
    private func calculateMetersToKilometers(meters: Float) -> Float {
        return meters * 0.001
    }
    
    private func calculateMetersToInch(meters: Float) -> Float {
        return meters * 39.3701
    }
    
    private func calculateMetersToMillimeters(meters: Float) -> Float {
        return meters * 1000
    }
    
    private func calculateMetersToFeet(meters: Float) -> Float {
        return meters * 3.28084
    }
    
    private func calculateMetersToYard(meters: Float) -> Float {
        return meters * 1.09361
    }
    
    private func calculateMetersToMile(meters: Float) -> Float {
        return meters * 0.000621371
    }
    
    private func calculateKilometersToMillimeters(kilometers: Float) -> Float {
        return kilometers * 1e+6
    }
    
    private func calculateKilometersToCentimeters(kilometers: Float) -> Float {
        return kilometers * 100000
    }
    
    private func calculateKilometersToInch(kilometers: Float) -> Float {
        return kilometers * 39370.1
    }
    
    private func calculateKilometersToFeet(kilometers: Float) -> Float {
        return kilometers * 3280.84
    }
    
    private func calculateKilometersToMeters(kilometers: Float) -> Float {
        return kilometers * 1000
    }
    
    private func calculateKilometersToYard(kilometers: Float) -> Float {
        return kilometers * 1093.61
    }
    
    private func calculateKilometersToMile(kilometers: Float) -> Float {
        return kilometers * 0.621371
    }
    
    private func calculateFeetToKilometers(feet: Float) -> Float {
        return feet * 0.0003048
    }
    
    private func calculateYardToMillimeters(yards: Float) -> Float {
        return yards * 914.4
    }
    
    private func calculateYardToInches(yards: Float) -> Float {
        return yards * 36
    }
    
    private func calculateYardToCentimeters(yards: Float) -> Float {
        return yards * 91.44
    }
    
    private func calculateYardToFeet(yards: Float) -> Float {
        return yards * 3
    }
    
    private func calculateYardToMeters(yards: Float) -> Float {
        return yards * 0.9144
    }
    
    private func calculateYardToKilometers(yards: Float) -> Float {
        return yards * 0.0009144
    }
    
    private func calculateYardToMiles(yards: Float) -> Float {
        return yards * 0.000568182
    }
    
    private func calculateMileToMillimeters(miles: Float) -> Float {
        return miles * 1.609e+6
    }
    
    private func calculateMileToCentimeters(miles: Float) -> Float {
        return miles * 160934
    }
    
    private func calculateMileToInches(miles: Float) -> Float {
        return miles * 63360
    }
    
    private func calculateMileToFeet(miles: Float) -> Float {
        return miles * 5280
    }
    
    private func calculateMileToMeters(miles: Float) -> Float {
        return miles * 1609.34
    }
    
    private func calculateMileToYards(miles: Float) -> Float {
        return miles * 1760
    }
    
    private func calculateMileToKilometers(miles: Float) -> Float {
        return miles * 1.60934
    }
    
    private func calculateMillimetersToCentimeters(millimeters: Float) -> Float {
        return millimeters * 0.1
    }
    
    private func calculateMillimetersToMeters(millimeters: Float) -> Float {
        return millimeters * 0.001
    }
    
    private func calculateMillimetersToKilometers(millimeters: Float) -> Float {
        return millimeters * 1e-6
    }
    
    
}
