//
//  MyCustomCollectionViewCell.swift
//  CollectionCompositalLayout
//
//  Created by Rodrigo Conte on 29/10/20.
//  Copyright © 2020 Rodrigo Conte. All rights reserved.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {
    static let identifier = "MyCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        let images: [UIImage] = [
            UIImage(named: "image-1"),
            UIImage(named: "image-2"),
            UIImage(named: "image-3"),
            UIImage(named: "image-4"),
            UIImage(named: "image-5"),
            UIImage(named: "image-6")
            ].compactMap({ $0 })
    
        imageView.image = images.randomElement()
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
}
