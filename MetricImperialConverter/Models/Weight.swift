//
//  Weight.swift
//  MetricImperialConverter
//
//  Created by Daniel Favano on 8/15/19.
//  Copyright © 2019 Daniel Favano. All rights reserved.
//

import Foundation

class Weight {
    
    enum WeightType : String {
        case Milligrams
        case Grams
        case Kilograms
        case Ounce
        case Pound
        case Stone
        case Ton
    }
    
    var Milligrams : Float = 0.0
    var Grams : Float = 0.0
    var Kilograms : Float = 0.0
    var Ounce : Float = 0.0
    var Pound : Float = 0.0
    var Stone : Float = 0.0
    var Ton : Float = 0.0
    
    func convertTo(from: (WeightType,Float), to: WeightType) -> Float {
        
        switch from.0 {
        case WeightType.Ounce:
            Milligrams = calculateOunceToMilligram(ounce: from.1)
            Grams = calculateOunceToGrams(ounce: from.1)
            Kilograms = calculateOunceToKilograms(ounce: from.1)
            Ounce = from.1
            Pound = calculateOunceToPound(ounce: from.1)
            Stone = calculateOunceToStone(ounce: from.1)
            Ton = calculateOunceToTon(ounce: from.1)
        case WeightType.Pound:
            Milligrams = calculatePoundToMilligram(pounds: from.1)
            Grams = calculatePoundToGram(pounds: from.1)
            Kilograms = calcualtePoundToKilograms(pounds: from.1)
            Ounce = calculatePoundToOunce(pounds: from.1)
            Pound = from.1
            Stone = calculatePoundToStone(pounds: from.1)
            Ton = calculatePoundToTon(pounds: from.1)
        case WeightType.Stone:
            Milligrams = calculateStoneToMilligram(stones: from.1)
            Grams = calculateStoneToGram(stones: from.1)
            Kilograms = calcualteStoneToKilograms(stones: from.1)
            Ounce = calculateStoneToOunce(stones: from.1)
            Pound = calculateStoneToPound(stones: from.1)
            Stone = from.1
            Ton = calculateStoneToTon(stones: from.1)
        case WeightType.Ton:
            Milligrams = calculateTonToMilligram(tons: from.1)
            Grams = calculateTonToGram(tons: from.1)
            Kilograms = calcualteTonToKilograms(tons: from.1)
            Ounce = calculateTonToOunce(tons: from.1)
            Pound = calculateTonToPound(tons: from.1)
            Stone = calculateTonToStone(tons: from.1)
            Ton = from.1
        case WeightType.Milligrams:
            Milligrams = from.1
            Grams = calculateMilligramToGram(milligrams: from.1)
            Kilograms = calculateMilligramToKilogram(milligrams: from.1)
            Ounce = calculateMilligramToOunce(milligrams: from.1)
            Pound = calculateMilligramToPound(milligrams: from.1)
            Stone = calculateMilligramToStone(milligrams: from.1)
            Ton = calculateMilligramToTon(milligrams: from.1)
        case WeightType.Grams:
            Milligrams = calculateGramToMilligram(grams: from.1)
            Grams = from.1
            Kilograms = calculateGramsToKilogram(grams: from.1)
            Ounce = calculateGramsToOunce(grams: from.1)
            Pound = calculateGramsToPound(grams: from.1)
            Stone = calculateGramsToStone(grams: from.1)
            Ton = calculateGramsToTon(grams: from.1)
        case WeightType.Kilograms:
            Milligrams = calculateKilogramToMilligram(kilograms: from.1)
            Grams = calculateKilogramToGram(kilograms: from.1)
            Kilograms = from.1
            Ounce = calculateKillogramsToOunce(killograms: from.1)
            Pound = calculateKillogramsToPound(killograms: from.1)
            Stone = calculateKillogramsToStone(killograms: from.1)
            Ton = calculateKillogramsToTon(killograms: from.1)
        }
        
        switch to {
        case WeightType.Ounce:
            return Ounce
        case WeightType.Pound:
            return Pound
        case WeightType.Stone:
            return Stone
        case WeightType.Ton:
            return Ton
        case WeightType.Milligrams:
            return Milligrams
        case WeightType.Grams:
            return Grams
        case WeightType.Kilograms:
            return Kilograms
        }
    }
    
    private func calculateMilligramToGram(milligrams: Float) -> Float {
        return milligrams / 1000
    }
    
    private func calculateKilogramToGram(killograms: Float) -> Float {
        return killograms / 1000
    }
    
    private func calculateOunceToMilligram(ounce: Float) -> Float {
        return ounce * 28349.523125
    }
    
    private func calculateMilligramToKilogram(milligrams: Float) -> Float {
        return milligrams * 1e-6
    }
    
    private func calculateOunceToGrams(ounce: Float) -> Float {
        return ounce * 28.349523
    }
    
    private func calculateOunceToKilograms(ounce: Float) -> Float {
        return ounce * 0.02835
    }
    
    private func calculateOunceToPound(ounce: Float) -> Float {
        return ounce / 16
    }
    
    private func calculateOunceToStone(ounce: Float) -> Float {
        return ounce / 224
    }
    
    private func calculateOunceToTon(ounce: Float) -> Float {
        return ounce / 32000
    }
    
    private func calculatePoundToMilligram(pounds: Float) -> Float {
        return pounds * 453592
    }
    
    private func calculatePoundToGram(pounds: Float) -> Float {
        return pounds * 453.592
    }
    
    private func calcualtePoundToKilograms(pounds: Float) -> Float {
        return pounds * 0.453592
    }
    
    private func calculatePoundToOunce(pounds: Float) -> Float {
        return pounds * 16
    }
    
    private func calculatePoundToStone(pounds: Float) -> Float {
        return pounds * 0.0714286
    }
    
    private func calculatePoundToTon(pounds: Float) -> Float {
        return pounds * 0.0005
    }
    
    private func calculateStoneToMilligram(stones: Float) -> Float {
        return stones * 6.35e+6
    }
    
    private func calculateStoneToGram(stones: Float) -> Float {
        return stones * 6350.29
    }
    
    private func calcualteStoneToKilograms(stones: Float) -> Float {
        return stones * 6.35029
    }
    
    private func calculateStoneToOunce(stones: Float) -> Float {
        return stones * 224
    }
    
    private func calculateStoneToPound(stones: Float) -> Float {
        return stones * 14
    }
    
    private func calculateStoneToTon(stones: Float) -> Float {
        return stones * 0.007
    }
    
    private func calculateTonToMilligram(tons: Float) -> Float {
        return tons * 1.016e+9
    }
    
    private func calculateTonToGram(tons: Float) -> Float {
        return tons * 1.016e+6
    }
    
    private func calcualteTonToKilograms(tons: Float) -> Float {
        return tons * 1016.05
    }
    
    private func calculateTonToOunce(tons: Float) -> Float {
        return tons * 32000
    }
    
    private func calculateTonToPound(tons: Float) -> Float {
        return tons * 2000
    }
    
    private func calculateTonToStone(tons: Float) -> Float {
        return tons * 142.857
    }
    
    private func calculateMilligramToOunce(milligrams: Float) -> Float {
        return milligrams * 0.000035274
    }
    
    private func calculateMilligramToPound(milligrams: Float) -> Float {
        return milligrams * 2.2046e-6
    }
    
    private func calculateMilligramToStone(milligrams: Float) -> Float {
        return milligrams * 1.5747e-7
    }
    
    private func calculateMilligramToTon(milligrams: Float) -> Float {
        return milligrams * 1.10228999994e-9
    }
    
    private func calculateKilogramToMilligram(kilograms: Float) -> Float {
        return kilograms * 1e+6
    }
    
    private func calculateKilogramToGram(kilograms: Float) -> Float {
        return kilograms * 1000
    }
    
    private func calculateKillogramsToOunce(killograms: Float) -> Float {
        return killograms * 35.274
    }
    
    private func calculateKillogramsToPound(killograms: Float) -> Float {
        return killograms * 2.20462
    }
    
    private func calculateKillogramsToStone(killograms: Float) -> Float {
        return killograms * 0.157473
    }
    
    private func calculateKillogramsToTon(killograms: Float) -> Float {
        return killograms * 0.00110231
    }
    
    private func calculateGramsToOunce(grams: Float) -> Float {
        return grams * 0.035274
    }
    
    private func calculateGramsToPound(grams: Float) -> Float {
        return grams * 0.00220462
    }
    
    private func calculateGramsToStone(grams: Float) -> Float {
        return grams * 0.000157473
    }
    
    private func calculateGramsToTon(grams: Float) -> Float {
        return grams * 1.1023e-6
    }
    
    private func calculateGramToMilligram(grams: Float) -> Float {
        return grams * 1000
    }
    
    private func calculateGramsToKilogram(grams: Float) -> Float {
        return grams * 0.001
    }
}
