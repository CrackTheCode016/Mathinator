//
//  AlgebraIVC.swift
//  Ultimate Mathinator
//
//  Created by Santiago on 10/3/17.
//  Copyright © 2017 Santiago. All rights reserved.
//

import UIKit

class AlgebraIVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var fieldOne: UITextField!
    
    @IBOutlet weak var fieldTwo: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var fieldThree: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var fieldFour: UITextField!
    
    @IBOutlet weak var process: UILabel!
    var items = [CoreModel]()
    var calculator: Calculator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       _ =  navigationItem.title = "Algebra I"
        tableView.delegate = self
        tableView.dataSource = self
        fieldOne.text = "0"
        fieldTwo.text = "0"
        fieldThree.text = "0"
        fieldFour.text = "0"
        addItemData()
        
        


    }
    
    func addItemData() {
        items.append(CoreModel(topicTitle: "Slope", description: "y2 - y1 / x2 / x1"))
        items.append(CoreModel(topicTitle: "Distance Formula", description: "√(x2 - x1)^2 + (y2 - y1)^2"
            ))
        items.append(CoreModel(topicTitle: "Slope Intercept Equation", description: "y = mx + b"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AlgebraICell", for: indexPath) as? TableCell  {
            
            let item = items[indexPath.row]
            cell.updateCellUI(model: item)
            return cell
        }
        
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        
        
        if item.topicTitle.contains("Slope") {
            fieldFour.isHidden = false
            result.text = peformSlopeCalculation(x1: fieldFour.text!, y1:       fieldTwo.text!, x2: fieldThree.text!, y2: fieldOne.text!, processLabel: &process.text!)
            fieldOne.placeholder = "X1"
            fieldTwo.placeholder = "X2"
            fieldThree.placeholder = "Y1"
            fieldFour.placeholder = "Y2"

        }
        
        if item.topicTitle.contains("Intercept") {
            fieldFour.isHidden = true
            fieldOne.placeholder = "X"
            fieldTwo.placeholder = "Y"
            fieldThree.placeholder = "Slope"
            result.text = createFunctionFromResults(x: fieldOne.text!, y: fieldTwo.text!, slope: fieldThree.text!, processLabel: &process.text!)
        }
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "algebra1DetailSegue" {
            if let vc = segue.destination as? AlgebraIDetailVC {
                if let item = sender as? CoreModel {
                    vc.item = item
                }
                
            }
        
        }
    }
}
