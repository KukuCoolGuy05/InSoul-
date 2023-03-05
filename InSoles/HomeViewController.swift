//
//  HomeViewController.swift
//  InSoles
//
//  Created by user on 3/5/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var homeButton2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeButton.layer.cornerRadius = 15
        homeButton2.layer.cornerRadius = 15
    
        let alert = UIAlertController(title: "What is your name", message: nil, preferredStyle: .alert)
        present(alert,animated: true,completion: nil)
        
        alert.addTextField(configurationHandler: {textField in textField.placeholder =
            "Your name"})
        
        let enter = UIAlertAction(title: "Enter", style: .default)
        {
            action in
            if let name = alert.textFields![0].text {
                self.nameLabel.text = "Hello, " + name
            }
        }
        alert.addAction(enter)
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(cancel)
        
    }
    
    
}
