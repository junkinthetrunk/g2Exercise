//
//  Guide.swift
//  gExercise
//
//  Created by Maria Gomez on 9/18/17.
//  Copyright © 2017 Maria Gomez. All rights reserved.
//

import UIKit

struct Guide {
    
    var name = ""
    var venue: [String: String] = [:]
    var icon = ""
    var endDate = ""
}

extension Guide {
    
    //I would add ObjectMapper framework here, more readable,
    //more failsafe, flexible, etc...
    //for this simple case just coding it here
    func mapGuides(json: [String : Any]) -> [Guide] {
        
        guard let guidesJSON = json["data"] as? [[String:Any]]
            else {
                print("no results in json")
                return []
        }
        
        var guides = [Guide]()
        
        //making sure that all fields are present in the JSON
        //usually don't trust that they will always be there and give them a default value if not (do this with object mapper design pattern)
        //for this exercise, using rule that all fields need to be there
        
        for index in 0..<guidesJSON.count {
            guard 
                let endDate = guidesJSON[index]["endDate"] as? String,
                let name = guidesJSON[index]["name"] as? String,
                let icon = guidesJSON[index]["icon"] as? String
                else {
                    print ("error with recipe")
                    return guides
            }
            
            let venue = guidesJSON[index]["venue"] as? [String:String]
            
            var guide = Guide()
            
            guide.name = name
            guide.venue = venue ?? [:]
            guide.icon = icon
            guide.endDate = endDate
            
            guides.append(guide)
        }
        
        return guides

    }
    
    
    
}


