//
//  GuideCell.swift
//  gExercise
//
//  Created by Maria Gomez on 9/18/17.
//  Copyright © 2017 Maria Gomez. All rights reserved.
//

import UIKit

class GuideCell: UICollectionViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var venueLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    
    var name = "" {
        didSet {
            nameLabel?.text = name
        }
    }
    
    var venue: [String:String] = [:] {
        didSet {
            venueLabel?.text = venue["city"]! + "," + venue["state"]!
        }
    }
    
    var endDate = "" {
        didSet {
            dateLabel.text = endDate
        }
        
    }
    
    var imageUrl = "" {
        didSet {
            if !imageUrl.isEmpty,
                let url = URL(string: imageUrl) {
                //guideImageView.downloadImageFrom(url: url, contentMode: .scaleAspectFit)
                imageView?.downloadImageFrom(url: url, contentMode: .scaleAspectFit)
            }
        }
    }
    
}


