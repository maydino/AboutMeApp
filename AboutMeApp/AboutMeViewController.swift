//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Mutlu Aydın on 11/15/21.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    let pictureView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
       return view
    }()
    
    let picture: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "pictureMe")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Mutlu Aydin"
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let pronounceLabel: UILabel = {
        let label = UILabel()
        label.text = "he/him/his"
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.textColor = .lightGray
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .white
        
        setUP()
    }
    
    func setUP () {
        view.addSubview(pictureView)
        pictureView.addSubview(picture)
        pictureView.addSubview(nameLabel)
        pictureView.addSubview(pronounceLabel)


        NSLayoutConstraint.activate([
            
            pictureView.widthAnchor.constraint(equalToConstant: 360),
            pictureView.heightAnchor.constraint(equalToConstant: 300 ),
            pictureView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            pictureView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            picture.widthAnchor.constraint(equalToConstant: 200),
            picture.heightAnchor.constraint(equalToConstant: 200 ),
            picture.topAnchor.constraint(equalTo: pictureView.topAnchor, constant: 15),
            picture.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            nameLabel.widthAnchor.constraint(equalToConstant: 150),
            nameLabel.heightAnchor.constraint(equalToConstant: 25 ),
            nameLabel.topAnchor.constraint(equalTo: picture.bottomAnchor, constant: 6),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            pronounceLabel.widthAnchor.constraint(equalToConstant: 150),
            pronounceLabel.heightAnchor.constraint(equalToConstant: 25 ),
            pronounceLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            pronounceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)
        
        ])
    }

}

