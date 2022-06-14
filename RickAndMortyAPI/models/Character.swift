//
//  Character.swift
//  RickAndMortyAPI
//
//  Created by Consultant on 6/14/22.
//

import Foundation

struct Character:Decodable{
    var id: Int = -1
    var name: String = "N/A"
    var status: String = "N/A"
    var species: String = "N/A"
    var type: String = "N/A"
    var gender: String = "N/A"
    var origin: Origin?
    var location: Location?
    var image: String = "N/A"
    var episode: [String] = []
    var url: String = "N/A"
    var created: String = "N/A"
    
}

struct Location: Decodable{
    var name: String
    var url: String
}

struct Origin: Decodable{
    var name: String
    var url: String
}
