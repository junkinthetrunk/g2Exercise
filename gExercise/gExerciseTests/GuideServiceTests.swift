//
//  GuideServiceTests.swift
//  gExercise
//
//  Created by Maria Gomez on 9/18/17.
//  Copyright © 2017 Maria Gomez. All rights reserved.
//

import XCTest

@testable import gExercise

//I would add the Nimble framework here to make things a little bit more readable
//doesn't impact app size or performance


class GuideServiceTests: XCTestCase {
    
    var service: GuideService!

    
    override func setUp() {
        super.setUp()

        service = GuideService()

    }
    
    func test_Service_Provides_Correct_URL() {
        
        //removed actual url 
        XCTAssert(service.baseUrlString == "")
    }
    
    
    func test_use_good_mapping_function() {
        //would inject json on the fly here to make sure
        //the right mapping function is being used to return a guides array
    }
    
    func test_errors_being_returned_appropriately_for_different_scenarios() {
        
    }
    
    
}
