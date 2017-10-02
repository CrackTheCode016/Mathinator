//
//  TableModel.swift
//  Ultimate Mathinator
//
//  Created by Santiago on 10/1/17.
//  Copyright © 2017 Santiago. All rights reserved.
//

import Foundation

class TableModel {
    
    private var _topicTitle: String!
    private var _description: String!
    
    var topicTitle: String {
        if _topicTitle == nil {
            _topicTitle = ""
        }
        
        return _topicTitle
    }
    
    var description: String {
        if _description == nil {
            _description = ""
        }
        
        return _description
    }
    
    init(topicTitle: String, description: String) {
        self._topicTitle = topicTitle
        self._description = description
    }
    
    
}
