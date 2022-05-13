//
//  Animation.swift
//  SpringAnimation_Lesson_2_9
//
//  Created by Андрей Барсук on 13.05.2022.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        Name: \(name)
        Curve: \(curve)
        Force: \(force)
        Duration: \(duration)
        Delay: \(delay)
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "Animation name",
            curve: DataManager.shared.animations.randomElement()?.rawValue ?? "Animation curve",
            force: Float.random(in: 0.5...2),
            duration: Float.random(in: 0.5...2),
            delay: Float.random(in: 0.1...0.7)
        )
    }
}
