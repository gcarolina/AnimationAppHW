//  AnimationProperties.swift
//  AnimationAppHW
//  Created by Carolina on 19.12.22.

import Foundation

class Properties {
    var force: CGFloat
    var duration: CGFloat
    var delay: CGFloat
    var curve: Curve
    var type: AnimationType
    
    init(force: CGFloat, duration: CGFloat, delay: CGFloat, curve: Curve, type: AnimationType) {
        self.force = force
        self.duration = duration
        self.delay = delay
        self.curve = curve
        self.type = type
    }
    // сила
    static func getRandomForce() -> Double {
        let randomForce = CGFloat.random(in: 0...3)
        return round(Double(randomForce) * 100) / 100
    }
    // продолжительность
    static func getRandomDuration() -> Double {
        let randomDuration = CGFloat.random(in: 0...3)
        return round(Double(randomDuration) * 100) / 100
    }
    // задержка
    static func getRandomDelay() -> Double {
        let randomDelay = CGFloat.random(in: 0...2)
        return round(Double(randomDelay) * 100) / 100
    }
}
