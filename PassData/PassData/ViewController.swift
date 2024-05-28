//
//  ViewController.swift
//  PassData
//
//  Created by Soumya Ranjan Mishra on 28/05/24.
//


/// Pass the data between VC
/// 1st way Comletion Handler
/// 2nd way Notification Center


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var saveLabel: UILabel!

    override func viewDidLoad() {
        NotificationCenter.default.addObserver(self, selector: #selector(didGetNotification(_:)), name: Notification.Name("text"), object: nil)
        super.viewDidLoad()
    }
    
    @objc func didGetNotification(_ notification: Notification){
        let text = notification.object as! String?
        self.saveLabel.text = text
    }
    
  
    @IBAction func didTapButton(){
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        /*secondVC.completionHandler = { text in
            self.saveLabel.text = text
        }*/
        secondVC.modalPresentationStyle = .fullScreen
        self.present(secondVC, animated: true)
    }
}

