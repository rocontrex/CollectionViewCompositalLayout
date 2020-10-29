//
//  ViewController.swift
//  CollectionCompositalLayout
//
//  Created by Rodrigo Conte on 29/10/20.
//  Copyright © 2020 Rodrigo Conte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    private let collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        collectionView.register(MyCustomCollectionViewCell.self,
                                forCellWithReuseIdentifier: MyCustomCollectionViewCell.identifier)
    
        collectionView.frame = view.bounds
        collectionView.backgroundColor = .white
        collectionView.dataSource = self
        
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return 30
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCustomCollectionViewCell.identifier, for: indexPath)
        return cell
     }
}

