//
//   _____             _    _
//  |  __ \           | |  | |
//  | |  | | __ _ _ __| | _| | ___ __ _   _  ___
//  | |  | |/ _` | '__| |/ / |/ / '__| | | |/ _ \
//  | |__| | (_| | |  |   <|   <| |  | |_| |  __/
//  |_____/ \__,_|_|  |_|\_\_|\_\_|   \__, |\___|
//                                     __/ |
//                                    |___/
//
//  People.swift
//  
//
//  Created by Pierre on 07/07/2019.
//

import Foundation

public class People: NSObject {
    var name: String
    var birthYear: String
    var eyeColor: String
    var gender: String
    var hairColor: String
    var height: String
    var mass: String
    var skinColor: String
    var homeworld: Planet
    var films: Array<Film>
    var species: Array<Specy>
    var starships: Array<Starship>
    var vehicles: Array<Vehicle>
    var url: String
    var created: String
    var edited: String
}

public class PeopleJSON: NSObject {
    var name: String
    var birth_year: String
    var eye_color: String
    var gender: String
    var hair_color: String
    var height: String
    var mass: String
    var skin_color: String
    var homeworld: String
    var films: Array<String>
    var species: Array<String>
    var starships: Array<String>
    var vehicles: Array<String>
    var url: String
    var created: String
    var edited: String
}
