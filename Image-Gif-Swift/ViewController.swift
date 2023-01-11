//
//  ViewController.swift
//  Image-Gif-Swift
//
//  Created by Luccas Santana Marinho on 11/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Informativo!"
        
        view.addSubview(image)
        setupLayout()
    }
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage.gifImageWithName("successfullyPix")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            image.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            image.heightAnchor.constraint(equalToConstant: 230),
            image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
        ])
    }
}
