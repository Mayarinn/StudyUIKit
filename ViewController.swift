//
//  ViewController.swift
//  StudyUIKit
//
//  Created by Karina Osadchaya on 6/5/24.
//

import UIKit

class ViewController: UIViewController {

    var titleLabel: UILabel {
        let titleLabel = UILabel()
        titleLabel.text = "Title"
        
        return titleLabel
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(titleLabel)
        view.backgroundColor = .systemMint
    }


}

