//
//  ViewController.swift
//  InSoles
//
//  Created by user on 3/5/23.
//

import UIKit
import FirebaseCore
import FirebaseFirestore

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 15
        
        let db = Firestore.firestore()
        
        db.collection("feetPics").document("cwl2eORLtp2yfZwCbqSW").setData([
            "name": "Los Angeles",
            "state": "CA",
            "country": "USA"
        ]) { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
            }
        }
    }


}

