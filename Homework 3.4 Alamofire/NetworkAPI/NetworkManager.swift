//
//  NetworkManager.swift
//  Homework 3.4 Alamofire
//
//  Created by Dinar on 21.03.2023.
//

import Foundation
import Alamofire

enum Link: String {
    case urlImage = "https://wallpapershome.ru/images/pages/pic_h/15195.jpg"
    case urlIceAndFire = "https://anapioficeandfire.com/api/characters/583"
}

enum NetworkError: String {
    case invalidURL
    case noData
    case errorDecoding
}


class NetworkManager {
    static let shared = NetworkManager()

    private init() {}
    
    func fetch(from url: String, completion: @escaping (Result<IceAndFire,AFError>)-> Void) {
        AF.request(Link.urlIceAndFire.rawValue,  method: .get)
            .validate()
            .responseJSON { response in
                switch response.result {
                case .success(let value):
                    let iceAndFire = getIceAndFireData(from: value)
                case .failure(let error):
                    print(error)
                }
            }
        
    }
   
    
}
