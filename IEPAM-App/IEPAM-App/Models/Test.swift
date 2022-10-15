//
//  Test.swift
//  IEPAM-App
//
//  Created by Sergio on 13/10/22.
//

import SwiftUI

class Test: ObservableObject, Identifiable {
    var id: Int
    var test: String
    var dimension_id: Int
    var self_test: Bool
    var result: Int
    
    init(id: Int, test: String, dimension_id: Int, self_test: Bool, result: Int) {
        
        self.id = id
        self.test = test
        self.dimension_id = dimension_id
        self.self_test = self_test
        self.result = result
    }
}

extension Test {
    static let dummy = Test(id: 0, test: "", dimension_id: 0, self_test: false, result: 0)
}
