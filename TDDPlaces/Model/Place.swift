//
//  Place.swift
//  TDDPlaces
//
//  Created by SLim on 12/12/18.
//  Copyright © 2018 SLim. All rights reserved.
//

import Foundation

struct Place: Equatable {
    
    var name: String?
    var address: String?
    var rating: Double?
    var openStatus: Bool?
    
    init(attributes: [String: Any]) {
        self.address = attributes["vicinity"] as? String
        self.name = attributes["name"] as? String
        self.rating = attributes["rating"] as? Double
        if let openingHours = attributes["opening_hours"] as? [String: Any] {
            self.openStatus = openingHours["open_now"] as? Bool
        }
    }
    
}
