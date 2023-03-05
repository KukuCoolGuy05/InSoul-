//
//  AboutViewController.swift
//  InSoles
//
//  Created by user on 3/5/23.
//

import UIKit

class AboutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openURL(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://shocking-sun-bay.glitch.me/")! as URL, options: [:], completionHandler: nil)
    }
    
}
