//
//  GuidesCollectionView.swift
//  gExercise
//
//  Created by Maria Gomez on 9/18/17.
//  Copyright © 2017 Maria Gomez. All rights reserved.
//

import UIKit

class GuidesController: UICollectionViewController {
    
    var service: GuideServiceProtocol = GuideService()
    var guides:[Guide] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        service.getGuides() { guides in
            self.guides = guides
            DispatchQueue.main.async {
                self.collectionView?.reloadData()
            }
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return guides.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: GuideCell.self), for: indexPath)
        
        guard let guideCell = cell as? GuideCell
            else { return cell }
        
        let guide = guides[indexPath.row]
        guideCell.name = guide.name
        guideCell.venue = guide.venue
        guideCell.endDate = guide.endDate
        guideCell.imageUrl = guide.icon
        return guideCell
        
    }
    
}

