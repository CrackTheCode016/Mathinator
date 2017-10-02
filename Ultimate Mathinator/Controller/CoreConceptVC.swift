
import UIKit

class CoreConceptVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var items = [TableModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        _ = navigationItem.title = "Core Concepts"
        addItems()

    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CoreCell", for: indexPath) as? TableCell {
            cell.selectionStyle = .none
            let item = items[indexPath.row]
            cell.updateCellUI(model: item)
            
            return cell
        }
        
        else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let coreItem = items[indexPath.row]
        
        performSegue(withIdentifier: "CoreDetailSegue", sender: coreItem)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CoreDetailSegue" {
            if let vc = segue.destination as? CoreConceptDetailVC {
                if let item = sender as? TableModel {
                    vc.coreItem = item
                }
            }
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 103
    }
    
    func addItems() {
        items.append(TableModel(topicTitle: "Adding Negatives", description: "Adding a negative number to positive like so: \n -4 + 8 \n is not as hard as it looks.  Think of it like subtracting, and switch them around like so: \n 8 - 4 \n Now we can just subtract, and we get our answer! \n -4 + 8 = 4 \n Now here is the something that gets most people: how do I know what sign goes where?  Well, we simply take the bigger numbers' sign and put it in our answer! \n -16 + 8 = -8 \n Since -16 was the larger number, and we are adding 8 to -16, we get -8."))
        items.append(TableModel(topicTitle: "Subtracting Negatives", description: "Negative Numbers."))
        items.append(TableModel(topicTitle: "Multiplying/Dividing Negatives", description: "Negative Numbers."))
        items.append(TableModel(topicTitle: "Times Tables", description: "Negative Numbers."))

    }
}
