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
            
            guard venue.count > 0
                else {
                    venueLabel.text = ""
                    return 
            }
            
            //would add case for having one or the other with the comma
            venueLabel?.text = (venue["city"] ?? "") + "," + (venue["state"] ?? "")
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
                imageView?.downloadImageFrom(url: url, contentMode: .scaleAspectFit)
            }
        }
    }
    
}


