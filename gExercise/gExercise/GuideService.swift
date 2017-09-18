//
//  GuideService.swift
//  gExercise
//
//  Created by Maria Gomez on 9/18/17.
//  Copyright © 2017 Maria Gomez. All rights reserved.
//

import Foundation
//import Result  see comment below for time not bringing in Result framework

protocol GuideServiceProtocol {
    
    func getGuides(completion: @escaping ([Guide]) -> ())
    
}

class GuideService {
    
    var baseUrlString = "https://guidebook.com/service/v2/upcomingGuides/"
    
    //create some type of Result where values and errors are returned upwards
    //like so Result<[Guide], NetworkError>
    
    func getGuides(query: String, completion: @escaping ([Guide]) -> ()) {
        
        guard  let url = URL(string: baseUrlString + query)
            else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard error == nil
                else {
                    print("error \(error?.localizedDescription ?? "no error given")")
                    return
            }
            
            guard let responseData = data
                else {
                    print("did not receive data")
                    return
            }
            
            do{
                
                guard  let guideResponse = try JSONSerialization.jsonObject(with: responseData, options: []) as? [String: AnyObject]
                    else {
                        print("error with JSON")
                        return
                }
                
                let guides = Guide().mapGuides(json: guideResponse)
                 completion(guides)
                
            }
            catch {
                print("error trying to convert JSON")
                return
            }
            
            
            return
            
            
        }
        task.resume()
    }
    
    

}
