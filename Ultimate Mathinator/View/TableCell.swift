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
    
    func updateCellUI(model: TableModel) {
        topicTitle.text = model.topicTitle
        descLabel.text = model.description
    }
}
