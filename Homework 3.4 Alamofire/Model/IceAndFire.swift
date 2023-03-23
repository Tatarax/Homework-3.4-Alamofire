//
//  IceAndFire.swift
//  Homework 3.4 Alamofire
//
//  Created by Dinar on 22.03.2023.
//

import Foundation

struct IceAndFireModel: Codable {
    let name: String?
    let gender: String?
    let culture: String?
    let born: String?
    
    
    init(iceAndFireData: [String:Any]) {
        name = iceAndFireData["name"] as? String
        gender = iceAndFireData["gender"] as? String
        culture = iceAndFireData["culture"] as? String
        born = iceAndFireData["born"] as? String
    }
    
}


    
    

