//
//  ViewController.swift
//  I Am Rich
//
//  Created by José Javier Cueto Mejía on 9/7/19.
//  Copyright © 2019 José Javier Cueto Mejía. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let diamondImageVIew: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "diamond")
        return iv
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Yo soy Millonario"
        label.font = UIFont.boldSystemFont(ofSize: 26)
        label.textColor = .textColor
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureLabel()
        configureImage()
    }
    
    func configureUI(){
        self.view.backgroundColor = .blueBackground
    }
    
    func configureLabel(){
        self.view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
    }
    
    
    func configureImage(){
        self.view.addSubview(diamondImageVIew)
        diamondImageVIew.translatesAutoresizingMaskIntoConstraints = false
        diamondImageVIew.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        diamondImageVIew.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        diamondImageVIew.heightAnchor.constraint(equalToConstant: 260).isActive = true
        diamondImageVIew.widthAnchor.constraint(equalToConstant: 260).isActive = true
    }
    
    
}

