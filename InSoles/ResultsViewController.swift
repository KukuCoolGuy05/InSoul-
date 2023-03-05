//
//  ResultsViewController.swift
//  InSoles
//
//  Created by user on 3/5/23.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var imageVIewResult: UIImageView!
    var image: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageVIewResult.image = image;
    }
}
