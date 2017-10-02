//
//  CoreConceptDetailVC.swift
//  Ultimate Mathinator
//
//  Created by Santiago on 10/1/17.
//  Copyright © 2017 Santiago. All rights reserved.
//

import UIKit

class CoreConceptDetailVC: UIViewController {
    
    var coreItem: TableModel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if coreItem != nil {
            titleLabel.text = coreItem.topicTitle
            descriptionLabel.text = coreItem.description
        }
        
    }
}
