

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var txtask: UITextField!
    @IBOutlet var txtdesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnaddtask_click(sender: UIButton) {
        taskmanager.addtask(txtask.text, txtdesc.text)
        self.view.endEditing(true)
    
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
        txtask.text = ""
        txtdesc.text = ""
        self.tabBarController!.selectedIndex = 0
        
    
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
    textField.resignFirstResponder()
    return true
    
    }
    
    

}

