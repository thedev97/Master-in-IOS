//
//  SecondViewController.swift
//  PassData
//
//  Created by Soumya Ranjan Mishra on 28/05/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var field : UITextField!
    
    //public var completionHandler: ((String?) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func saveButton(){
        //completionHandler?(field.text)
        NotificationCenter.default.post(name: Notification.Name("text"), object: field.text)
        self.dismiss(animated: true, completion: nil)
    }
}
