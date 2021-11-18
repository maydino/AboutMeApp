//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Mutlu Aydın on 11/15/21.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    // MARK: Picture View
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
    
    // MARK: Location and Social Media View
    let locationView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
       return view
    }()
    
    let borderView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
       return view
    }()
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "📍 Pasadena, CA"
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        label.textColor = .black
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let twitterStack: imageLabelStackView = {
        let stackView = imageLabelStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = true
        stackView.updateView(withImage: UIImage(named: "twitter"), andText: "selam ben geldim twitterdan")
        return stackView
    }()
    
    let linkedinStack: imageLabelStackView = {
        let stackView = imageLabelStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = true
        stackView.updateView(withImage: UIImage(named: "linkedin"), andText: "selam ben geldim linkedin den")
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .white
        
        pictureSetUP()
        locationSetUP()
    }
    
    // MARK: Picture View Constraints
    func pictureSetUP () {
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
    
    // MARK: Location View Constraints
    func locationSetUP () {
        view.addSubview(locationView)
        
        locationView.addSubview(linkedinStack)
        locationView.addSubview(twitterStack)
        
        locationView.addSubview(locationLabel)
        locationView.addSubview(borderView)
                
        
        NSLayoutConstraint.activate([
            
            locationView.widthAnchor.constraint(equalToConstant: 360),
            locationView.heightAnchor.constraint(equalToConstant: 150 ),
            locationView.topAnchor.constraint(equalTo: view.topAnchor, constant: 380),
            locationView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            locationLabel.widthAnchor.constraint(equalToConstant: 200),
            locationLabel.heightAnchor.constraint(equalToConstant: 50 ),
            locationLabel.topAnchor.constraint(equalTo: locationView.topAnchor, constant: 10),
            locationLabel.leadingAnchor.constraint(equalTo: locationView.leadingAnchor, constant: 10),
            
            borderView.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 0),
            borderView.leadingAnchor.constraint(equalTo: locationView.leadingAnchor, constant: 0),
            borderView.trailingAnchor.constraint(equalTo: locationView.trailingAnchor, constant: 0),
            borderView.heightAnchor.constraint(equalToConstant: 2 ),
            
            twitterStack.widthAnchor.constraint(equalTo: locationView.widthAnchor),
            twitterStack.heightAnchor.constraint(equalToConstant: 50 ),
            twitterStack.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 10),
            
            linkedinStack.widthAnchor.constraint(equalTo: locationView.widthAnchor),
            linkedinStack.heightAnchor.constraint(equalToConstant: 50 ),
            linkedinStack.topAnchor.constraint(equalTo: twitterStack.bottomAnchor, constant: 6),
            
        
        ])
    }

}

