//
//  CardDeck.swift
//  CardWorkout
//
  

import UIKit

struct CardDeck {
    static var allValues = [
        UIImage.unwrapOptional(name: "2H"),
        UIImage.unwrapOptional(name: "3H"),
        UIImage.unwrapOptional(name: "4H"),
        UIImage.unwrapOptional(name: "5H"),
        UIImage.unwrapOptional(name: "6H"),
        UIImage.unwrapOptional(name: "7H"),
        UIImage.unwrapOptional(name: "8H"),
        UIImage.unwrapOptional(name: "9H"),
        UIImage.unwrapOptional(name: "10H"),
        UIImage.unwrapOptional(name: "JH"),
        UIImage.unwrapOptional(name: "QH"),
        UIImage.unwrapOptional(name: "KH"),
        UIImage.unwrapOptional(name: "AH"),
        
        UIImage.unwrapOptional(name: "2S"),
        UIImage.unwrapOptional(name: "3S"),
        UIImage.unwrapOptional(name: "4S"),
        UIImage.unwrapOptional(name: "5S"),
        UIImage.unwrapOptional(name: "6S"),
        UIImage.unwrapOptional(name: "7S"),
        UIImage.unwrapOptional(name: "8S"),
        UIImage.unwrapOptional(name: "9S"),
        UIImage.unwrapOptional(name: "10S"),
        UIImage.unwrapOptional(name: "JS"),
        UIImage.unwrapOptional(name: "QS"),
        UIImage.unwrapOptional(name: "KS"),
        UIImage.unwrapOptional(name: "AS"),
        
        UIImage.unwrapOptional(name: "2C"),
        UIImage.unwrapOptional(name: "3C"),
        UIImage.unwrapOptional(name: "4C"),
        UIImage.unwrapOptional(name: "5C"),
        UIImage.unwrapOptional(name: "6C"),
        UIImage.unwrapOptional(name: "7C"),
        UIImage.unwrapOptional(name: "8C"),
        UIImage.unwrapOptional(name: "9C"),
        UIImage.unwrapOptional(name: "10C"),
        UIImage.unwrapOptional(name: "JC"),
        UIImage.unwrapOptional(name: "QC"),
        UIImage.unwrapOptional(name: "KC"),
        UIImage.unwrapOptional(name: "AC"),
        
        UIImage.unwrapOptional(name: "2D"),
        UIImage.unwrapOptional(name: "3D"),
        UIImage.unwrapOptional(name: "4D"),
        UIImage.unwrapOptional(name: "5D"),
        UIImage.unwrapOptional(name: "6D"),
        UIImage.unwrapOptional(name: "7D"),
        UIImage.unwrapOptional(name: "8D"),
        UIImage.unwrapOptional(name: "9D"),
        UIImage.unwrapOptional(name: "10D"),
        UIImage.unwrapOptional(name: "JD"),
        UIImage.unwrapOptional(name: "QD"),
        UIImage.unwrapOptional(name: "KD"),
        UIImage.unwrapOptional(name: "AD"),
    ]
}

extension UIImage {
    static func unwrapOptional(name: String) -> UIImage {
        guard let image = UIImage(named: name) else {
            return UIImage()
        }
        return image
    }
}
