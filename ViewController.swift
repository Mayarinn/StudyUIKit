//
//  ViewController.swift
//  StudyUIKit
//
//  Created by Karina Osadchaya on 6/5/24.
//

import UIKit

class ViewController: UIViewController {

// MARK: - variables

    var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Title"
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return titleLabel
    }()
    
    var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "2puss")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
// MARK: - functions

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        view.addSubview(titleLabel)
        view.addSubview(imageView)
        setConstraints()
        
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            imageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            imageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            imageView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.75),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor)
        ])
    }

}

