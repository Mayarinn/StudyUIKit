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
    
// MARK: - functions

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        view.addSubview(titleLabel)
        setConstraints()
        
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }

}

