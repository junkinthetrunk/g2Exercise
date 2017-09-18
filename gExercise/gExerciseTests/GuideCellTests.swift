//
//  GuideCellTests.swift
//  gExercise
//
//  Created by Maria Gomez on 9/18/17.
//  Copyright © 2017 Maria Gomez. All rights reserved.
//

import XCTest

class GuideCellTests: XCTestCase {
    
    func test_view_and_view_loads() {
        
    }
    
    func test_cell_has_outlets() {
        
    }
    
    func test_cell_properties() {
    
    }
    
    private func getTheApplicationViewController() -> UITableViewController? {
        if let rootWindow = UIApplication.shared.keyWindow, let viewController = rootWindow.rootViewController as? UITableViewController{
            return viewController
        } else {
            return nil
        }
    }

}
