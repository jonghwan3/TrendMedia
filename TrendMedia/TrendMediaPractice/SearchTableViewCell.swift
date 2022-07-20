//
//  SearchTableViewCell.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/19.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieProductionDateLabel: UILabel!
    @IBOutlet weak var movieStoryLabel: UILabel!
    
    func configureCell(data: Movie) {
        movieTitleLabel.font = .boldSystemFont(ofSize: 15)
        movieTitleLabel.text = data.title
        movieProductionDateLabel.font = .systemFont(ofSize: 12)
        movieProductionDateLabel.text = "\(data.releaseDate) | \(data.runtime)분 | \(data.rate)점"
        movieStoryLabel.font = .systemFont(ofSize: 15)
        movieStoryLabel.text = data.overview
    }
}
