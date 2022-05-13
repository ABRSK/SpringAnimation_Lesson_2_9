//
//  DataManager.swift
//  SpringAnimation_Lesson_2_9
//
//  Created by Андрей Барсук on 13.05.2022.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    init() {}
}
