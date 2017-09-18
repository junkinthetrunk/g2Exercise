//
//  JsonType.swift
//  gExercise
//
//  Created by Maria Gomez on 9/18/17.
//  Copyright © 2017 Maria Gomez. All rights reserved.
//

import Foundation


enum JsonType {
    
    case one
    case multiple
    case empty
    case emptyVenue
    case missingName
    
    func response() -> [String:Any] {
        switch self {
        case .one: return oneGuideJson
        case .multiple: return multipleGuideJson
        case .empty: return emptyGuideJson
        case .emptyVenue: return emptyVenueJson
        case .missingName: return badGuideJson

        }
    }
}

fileprivate  let oneGuideJson:[String:Any] = [ "data": [
    [
        "startDate":"Sep 21, 2017",
        "objType":"guide",
        "endDate":"Sep 21, 2017",
        "name":"Engineering Co-op Fall 17 Job Fair",
        "loginRequired":false,
        "url":"/guide/105500",
        "venue": ["city": "Hallandale", "state": "FL"],
        "icon":"https://s3.amazonaws.com/media.guidebook.com/service/rMjaYFjzuP6lVXwsb5mtkOkil2tfNqLLpSYzgXtg/logo.png"
    ]
    ]
]

fileprivate  let multipleGuideJson:[String:Any] = [ "data": [
    [
        "startDate":"Sep 21, 2017",
        "objType":"guide",
        "endDate":"Sep 21, 2017",
        "name":"Engineering Co-op Fall 17 Job Fair",
        "loginRequired":false,
        "url":"/guide/105500",
        "venue": ["city": "Hallandale", "state": "FL"],
        "icon":"https://s3.amazonaws.com/media.guidebook.com/service/rMjaYFjzuP6lVXwsb5mtkOkil2tfNqLLpSYzgXtg/logo.png"
    ],
    [
        "startDate":"Sep 21, 2017",
        "objType":"guide",
        "endDate":"Sep 21, 2017",
        "name":"Engineering Co-op Fall 17 Job Fair",
        "loginRequired":false,
        "url":"/guide/105500",
        "venue": ["city": "Hallandale", "state": "FL"],
        "icon":"https://s3.amazonaws.com/media.guidebook.com/service/rMjaYFjzuP6lVXwsb5mtkOkil2tfNqLLpSYzgXtg/logo.png"
    ]
    ]
]


fileprivate  let emptyGuideJson:[String:Any] = [ "data": []
]


fileprivate  let emptyVenueJson:[String:Any] = [ "data": [
    [
        "startDate":"Sep 21, 2017",
        "objType":"guide",
        "endDate":"Sep 21, 2017",
        "name":"Engineering Co-op Fall 17 Job Fair",
        "loginRequired":false,
        "url":"/guide/105500",
        "venue": [],
        "icon":"https://s3.amazonaws.com/media.guidebook.com/service/rMjaYFjzuP6lVXwsb5mtkOkil2tfNqLLpSYzgXtg/logo.png"
    ]
    ]
]

//add as many variations of json that are needed for testing

fileprivate  let badGuideJson:[String:Any] = [ "data": [
    [
        "startDate":"Sep 21, 2017",
        "objType":"guide",
        "endDate":"Sep 21, 2017",
        "nameX":"Engineering Co-op Fall 17 Job Fair",
        "loginRequired":false,
        "url":"/guide/105500",
        "venue": ["city": "Hallandale", "state": "FL"],
        "icon":"https://s3.amazonaws.com/media.guidebook.com/service/rMjaYFjzuP6lVXwsb5mtkOkil2tfNqLLpSYzgXtg/logo.png"
    ]
    ]
]



