//
//  SpringAnimation.swift
//  SpringApp
//
//  Created by Егор Савковский on 04.05.2021.
//

import UIKit

struct SpringAnimation {
    let animation: String
    let curve: String
    let duration: String
    let force: String
}

extension SpringAnimation {
    public static func getData() -> [SpringAnimation] {
        
        let animationDataManager = AnimationInfoDataManager.shared
        var springAnimations: [SpringAnimation] = []
        
        for animation in animationDataManager.animations {
            for curve in animationDataManager.curves {
                
                let springAnimation = SpringAnimation(
                    animation: animation,
                    curve: curve,
                    duration: CGFloat.random(in: 0...1.5).description,
                    force: CGFloat.random(in: 0...1.5).description
                )
                
                springAnimations.append(springAnimation)
            }
        }
        
        return springAnimations
    }
}
