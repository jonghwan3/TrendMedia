//
//  LibraryCollectionViewCell.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/20.
//

import UIKit
import Kingfisher

class LibraryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageViewLabel: UIImageView!
    
    @IBOutlet weak var outlineLabel: UILabel!
    @IBOutlet weak var writerLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    //var colorList: [UIColor] = [.orange, .yellow, .green]
    
    func configCell(data: Book) {
        //cellView.backgroundColor = colorList.randomElement()
        cellView.backgroundColor = UIColor(red: CGFloat.random(in: 0.7...1), green: CGFloat.random(in: 0.7...1), blue: CGFloat.random(in: 0.7...1), alpha: 0.2)
        cellView.layer.cornerRadius = 12
        titleLabel.text = data.title
        let url = URL(string: data.imageURL)
        imageViewLabel.kf.setImage(with: url)
        priceLabel.text = "\(data.price)원"
        priceLabel.textColor = .red
        writerLabel.text = data.writer
        writerLabel.textColor = .gray
        outlineLabel.text = data.outline
    }
    
}
