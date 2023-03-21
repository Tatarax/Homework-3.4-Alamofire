//
//  MainViewController.swift
//  Homework 3.4 Alamofire
//
//  Created by Dinar on 21.03.2023.
//

import UIKit

private let reuseIdentifier = "collectionCell"

enum ButtonActions: String, CaseIterable {
    case showImage = "Show image"
    case showCitation = "Show Citation"
}

class MainViewController: UICollectionViewController {
    
    let buttonActions = ButtonActions.allCases
    
    
    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        buttonActions.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ButtonActionCell
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let buttonAction = buttonActions[indexPath.row]
        
        switch buttonAction {
        case .showImage: performSegue(withIdentifier: "imageCell", sender: nil)
        case .showCitation: performSegue(withIdentifier: "DataCell", sender: nil)
        }
    }

    

    

}

    // MARK: - Extension
extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: UIScreen.main.bounds.width - 100, height: 90)
    }
    
    
    
    
}
