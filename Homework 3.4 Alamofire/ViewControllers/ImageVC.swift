//
//  ImageVC.swift
//  Homework 3.4 Alamofire
//
//  Created by Dinar on 21.03.2023.
//

import UIKit

class ImageVC: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchImage()
        
    }
    
    private func fetchImage() {
        NetworkManager.shared.fetchImage(from: Link.urlImage.rawValue) { [weak self] result in
            switch result {
            case .success(let imageData):
                self?.imageView.image = UIImage(data: imageData)
            case .failure(let error):
                print(error)
            }
        }
    }
    

    
   

}
