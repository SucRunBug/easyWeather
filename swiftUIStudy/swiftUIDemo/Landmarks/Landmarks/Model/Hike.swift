//
//  Hike.swift
//  Landmarks
//
//  Created by yfy on 2023/5/22.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    static var formatter = LengthFormatter()    // i don't understand to line 22
    
    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        
        var elevation: Range<Double>    // 海拔
        var pace: Range<Double> // 步速
        var heartRate: Range<Double>
    }
}
