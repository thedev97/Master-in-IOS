//
//  ViewController.swift
//  UnderstandMemoryLeak
//
//  Created by Soumya Ranjan Mishra on 22/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func homeButtonPressed(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController else {return}
        present(vc, animated: true, completion: nil)
    }
}

