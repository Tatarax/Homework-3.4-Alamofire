//
//  IceAndFireVC.swift
//  Homework 3.4 Alamofire
//
//  Created by Dinar on 22.03.2023.
//

import UIKit

class IceAndFireVC: UIViewController {

    //MARK: - Outlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var cultureLabel: UILabel!
    @IBOutlet var bornLabel: UILabel!
    
    var fire: IceAndFire = IceAndFire(name: "", gender: "", culture: "", born: "")
    
    func configur(with iceAndFire: IceAndFire) {
        nameLabel.text = iceAndFire.name
        genderLabel.text = iceAndFire.gender
        cultureLabel.text = iceAndFire.culture
        bornLabel.text = iceAndFire.born
    }
    
    private func fetchIceAndFire() {
        NetworkManager.shared.fetch(from: Link.urlIceAndFire.rawValue) { [weak self] result in
            switch result {
            case .success(let value):
                self?.fire = value
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    
    
}
