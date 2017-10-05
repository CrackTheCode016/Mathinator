//
//  TableCell.swift
//  Ultimate Mathinator
//
//  Created by Santiago on 10/1/17.
//  Copyright © 2017 Santiago. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    @IBOutlet weak var topicTitle: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    @IBOutlet weak var algebraICalcTitle: UILabel!
    
    @IBOutlet weak var algebraICalcDesc: UILabel!
    
    func updateCellUI(model: CoreModel) {
        topicTitle.text = model.topicTitle
        descLabel.text = model.description
    }
}
