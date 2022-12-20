//  AnimationProperties.swift
//  AnimationAppHW
//  Created by Carolina on 19.12.22.

import Foundation

struct Properties {
    var force: CGFloat
    var duration: CGFloat
    var delay: CGFloat

    static func getRandomProperties() -> Double {
        let randomForce = CGFloat.random(in: 0...3)
        return round(Double(randomForce) * 100) / 100
    }
}
