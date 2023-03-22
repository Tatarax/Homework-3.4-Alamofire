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
    
    init(name: String?, gender: String?, culture: String?, born: String?) {
        self.name = name
        self.gender = gender
        self.culture = culture
        self.born = born
    }
    
    init(iceAndFireData: [String:Any]) {
        name = iceAndFireData["name"] as? String
        gender = iceAndFireData["gender"] as? String
        culture = iceAndFireData["culture"] as? String
        born = iceAndFireData["born"] as? String
    }
}

extension IceAndFire {
    static func getIceAndFireData(from value: Any) -> [IceAndFireModel] {
        guard let iceAndFires = value as? [[String:Any]] else { return [] }
        return iceAndFires.compactMap {IceAndFireModel(iceAndFireData: $0)
        }
    }
    
    
}
