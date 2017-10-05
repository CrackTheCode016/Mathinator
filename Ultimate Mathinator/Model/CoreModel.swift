//
//  TableModel.swift
//  Ultimate Mathinator
//
//  Created by Santiago on 10/1/17.
//  Copyright © 2017 Santiago. All rights reserved.
//

import Foundation

class CoreModel: MathinatorTable {
    var title: String!
    var desc: String!
    
    var topicTitle: String {
        if title == nil {
            title = ""
        }
        
        return title
    }
    
    var description: String {
        if desc == nil {
            desc = ""
        }
        
        return desc
    }
    
    init(topicTitle: String, description: String) {
        self.title = topicTitle
        self.desc = description
    }
}

