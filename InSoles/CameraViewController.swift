//
//  CameraViewController.swift
//  InSoles
//
//  Created by user on 3/5/23.
//

import UIKit



class CameraViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.backgroundColor = .secondarySystemBackground
        button.backgroundColor = .systemBlue
        button.setTitle("Take Picture Of Your Feet!", for: .normal)
        button.setTitleColor(.white, for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "segueImage") {
            let temp = imageView.image
            let nvc = segue.destination as! ResultsViewController
            nvc.image = temp
        }
        
    }
    
    @IBAction func didTapButton(){
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = self
        present(picker, animated: true)
    }
}

extension CameraViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage  else {
            return
        }
        imageView.image = image
    }
}
