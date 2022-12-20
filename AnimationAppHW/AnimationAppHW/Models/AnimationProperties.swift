//  AnimationProperties.swift
//  AnimationAppHW
//  Created by Carolina on 19.12.22.

import Foundation

class Properties {
    var force: CGFloat
    var duration: CGFloat
    var delay: CGFloat
    
    init(force: CGFloat, duration: CGFloat, delay: CGFloat) {
        self.force = force
        self.duration = duration
        self.delay = delay
    }

    static func getRandomProperties() -> Double {
        let randomForce = CGFloat.random(in: 0...3)
        return round(Double(randomForce) * 100) / 100
    }
}
