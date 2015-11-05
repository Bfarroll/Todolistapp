
import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tbltasks: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        tbltasks.reloadData()
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
    
        if (editingStyle == UITableViewCellEditingStyle.Delete){
        taskmanager.tasks.removeAtIndex(indexPath.row)
        tbltasks.reloadData()
        }
    
    }
    
    

    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    
        return taskmanager.tasks.count
    
    }
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
    
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        
        cell.text = taskmanager.tasks[indexPath.row].name
        cell.detailTextLabel.text = taskmanager.tasks[indexPath].desc
        
        return cell
        
    }
    

}

