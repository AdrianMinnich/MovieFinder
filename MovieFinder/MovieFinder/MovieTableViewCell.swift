//
//  MovieTableViewCell.swift
//  MovieFinder
//
//  Created by Adrian Minnich on 21/04/2021.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var movieYearLabel: UILabel!
    @IBOutlet var moviePosterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "MovieTableViewCell", bundle: nil)
    }
    
    static let identifier = "MovieTableViewCell"
    
    func configure(with model: Movie) {
        self.movieTitleLabel.text = model.Title
        self.movieTitleLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        self.movieYearLabel.text = model.Year
        
        let url = model.Poster
        if let data = try? Data(contentsOf: URL(string: url)!) {
            self.moviePosterImageView.image = UIImage(data: data)
        }      
    }
}
