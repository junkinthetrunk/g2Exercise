//
//  GuideTests.swift
//  gExercise
//
//  Created by Maria Gomez on 9/18/17.
//  Copyright © 2017 Maria Gomez. All rights reserved.
//

import XCTest

@testable import gExercise

//I would add the Nimble framework here to make things a little bit more readable
//doesn't impact app size/performance

class guideTests: XCTestCase {
    
    
    func test_one_correct_mapping_to_good_json() {
        let result = Guide().mapGuides(json: JsonType.one.response())
        
        XCTAssert(result.count == 1)
        
        //test here for known values
        let testGuide = result[0]
        XCTAssert(testGuide.endDate == "Sep 21, 2017")
        XCTAssert(testGuide.name == "Engineering Co-op Fall 17 Job Fair")
        XCTAssert(testGuide.icon == "https://s3.amazonaws.com/media.guidebook.com/service/rMjaYFjzuP6lVXwsb5mtkOkil2tfNqLLpSYzgXtg/logo.png")
        XCTAssert(testGuide.venue.count == 2)
        
    }
    
    func test_good_json_nmultiple_guides() {
    }

    func test_bad_json_missing_name_no_results() {
        
    }
    
    func test_bad_json_no_guides_no_results() {
        
    }
    
}
