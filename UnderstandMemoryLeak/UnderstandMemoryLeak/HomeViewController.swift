//
//  HomeViewController.swift
//  UnderstandMemoryLeak
//
//  Created by Soumya Ranjan Mishra on 22/05/24.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        print("\(self) allocated")
        super.viewDidLoad()
        setObserver()
        addTimer()
    }
    
    deinit {
        print("\(self) deallocated")
    }

    @IBAction func exitButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func setObserver(){
        
    }
    
    func printHello(){
        print("Hello")
    }
    
    func addTimer(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0){[weak self] in
            self?.printHello()
        }
    }
}

