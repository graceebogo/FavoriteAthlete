//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Soft Dev Student on 5/2/19.
//

import Foundation


struct Athlete {
    var name : String
    var age: Int
    var league: String
    var team: String
    
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) in the \(league)."
        
        
    }
    
}
