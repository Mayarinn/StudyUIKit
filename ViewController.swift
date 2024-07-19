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
    
    var descLabel: UILabel = {
        let descLabel = UILabel()
        descLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada pellentesque elit eget gravida cum. Dui nunc mattis enim ut. Ac felis donec et odio. Et tortor at risus viverra adipiscing at in tellus integer."
        descLabel.numberOfLines = 0
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return descLabel
    }()
    
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
// MARK: - functions

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        addSubviews()
        setConstraints()
        
    }
    
    func addSubviews(){
        view.addSubview(titleLabel)
        view.addSubview(imageView)
        view.addSubview(stackView)
        stackView.addArrangedSubview(descLabel)
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

