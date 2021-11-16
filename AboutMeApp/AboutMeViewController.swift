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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .white
        
        setUP()
    }
    
    func setUP () {
        view.addSubview(pictureView)
        pictureView.addSubview(picture)

        NSLayoutConstraint.activate([
            
            pictureView.widthAnchor.constraint(equalToConstant: 360),
            pictureView.heightAnchor.constraint(equalToConstant: 300 ),
            pictureView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            pictureView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            picture.widthAnchor.constraint(equalToConstant: 200),
            picture.heightAnchor.constraint(equalToConstant: 200 ),
            picture.topAnchor.constraint(equalTo: pictureView.topAnchor, constant: 15),
            picture.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)
        
        ])
    }

}

