//
//  ViewController.swift
//  Camera
//
//  Created by Tuğçe Aksoy on 18.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.backgroundColor = .secondarySystemBackground
        button.backgroundColor = .systemPink
        button.setTitle("Take Picture", for: .normal)
        button.setTitleColor(.white, for: .normal)
        }
    
    
    @IBAction func didTapButton(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = self
        present(picker,animated: true)
    }
    

}
extension ViewController :UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true,completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image  = info[UIImagePickerController.InfoKey.originalImage] as?
                UIImage else{
            return
        }
        imageView.image = image
    }
    
    
    
}

