//
//  TitleCollectionViewCell.swift
//  Netflix clone
//
//  Created by rahul kaushik on 11/10/22.
//

import UIKit
import SDWebImage

class TitleCollectionViewCell: UICollectionViewCell {
    static let identifier = "titleCollectionViewCell"
    
    private let posterImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = contentView.bounds
    }
    
    func configure(with model : String) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model)") else {return }
        posterImageView.sd_setImage(with: url, completed: nil)
    }
    
}
