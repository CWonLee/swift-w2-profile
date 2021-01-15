//
//  ViewController.swift
//  KakaoProfile
//
//  Created by 이청원 on 2021/01/11.
//

import UIKit

protocol ProfileDelegate : class {
    func receivedProfile(image: UIImage?, name: String, description: String)
}

class ViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    var receivedImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = "blue"
        self.descriptionLabel.text = "KaKao"
        
        self.profileImage.layer.cornerRadius = 20
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? EditViewController {
            destination.profileDelegate = self
            destination.profileImage = self.profileImage.image ?? nil
            destination.nameText = self.nameLabel.text ?? ""
            destination.descriptionText = self.descriptionLabel.text ?? ""
        }
    }
}

extension ViewController : ProfileDelegate {
    func receivedProfile(image: UIImage?, name: String, description: String) {
        profileImage.image = image
        nameLabel.text = name
        descriptionLabel.text = description
    }
}

