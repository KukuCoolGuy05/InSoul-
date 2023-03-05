//
//  ResultsViewController.swift
//  InSoles
//
//  Created by user on 3/5/23.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseStorage

class ResultsViewController: UIViewController {

    @IBOutlet weak var imageVIewResult: UIImageView!
    var image: UIImage!
    private let storage = Storage.storage().reference()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageVIewResult.image = image;
        guard let imageData = image.pngData() else{
            return
        }
        
        storage.child("images/file.png").putData(imageData, metadata: nil, completion: {_, error in
            guard error == nil else {
                print("Failed to upload")
                return
            }
        })
        
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
