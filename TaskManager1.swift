
import UIKit

var taskmanager: Taskmanager = Taskmanager()

struct task {
    var name = "Un-named"
    var desc = "Un-description"
}

class TaskManager1: NSObject {

    var tasks = [task]()
    
    func addTask (name: String, desc: String) {
    
    tasks.append(task(name: name, desc: desc))
    
    }
    
}
