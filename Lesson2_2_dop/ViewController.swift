//
//  ViewController.swift
//  Lesson2_2_dop
//
//  Created by Ilnar on 18.11.2024.
//

import UIKit

class ViewController: UIViewController {
    let appNameLabel = UILabel()
    let nameLabel = UILabel()
    let ageLabel = UILabel()
    
    let image = UIImageView()
    let shevronImage = UIImageView()
    var imageContent = UIImage()
    
    var cancelButton = UIButton()
    var likeButton = UIButton()
    let writeButton = UIButton()
    
    lazy var widht = view.frame.width - 60

    override func viewDidLoad() {
        super.viewDidLoad()

        appNameLabel.text = "AppName"
        appNameLabel.frame = CGRect(x: 30, y: 100, width: 147, height: 36)
        appNameLabel.font = .systemFont(ofSize: 30, weight: .bold)
        
        image.frame = CGRect(x: 30, y: appNameLabel.frame.maxY + 20, width: widht, height: 392)
        image.layer.cornerRadius = 40
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        imageContent = .foto
        image.image = imageContent
        
        nameLabel.text = "Имя Фамилия"
        nameLabel.frame = CGRect(x: 60, y: image.frame.maxY - 100, width: 140, height: 24)
        nameLabel.font = .systemFont(ofSize: 20, weight: .bold)
        nameLabel.textColor = .white
        
        ageLabel.text = "25 лет"
        ageLabel.frame = CGRect(x: 60, y: nameLabel.frame.maxY + 5, width: 51, height: 19)
        ageLabel.font = .systemFont(ofSize: 16)
        ageLabel.textColor = .white
        
        shevronImage.frame = CGRect(x: nameLabel.frame.maxX + 1, y: image.frame.maxY - 100, width: 29, height: 29)
        shevronImage.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        imageContent = .shevron
        shevronImage.image = imageContent
        
        writeButton.frame = CGRect(x: view.frame.midX - 150 / 2, y: image.frame.maxY + 20, width: 150, height: 65)
        writeButton.setTitle("Написать", for: .normal)
        writeButton.setTitleColor(.white, for: .normal)
        writeButton.backgroundColor = .systemGreen
        writeButton.layer.cornerRadius = 20
        
        cancelButton = buttonSetup(offsetX: 30, imageButton: .cancel)
        likeButton = buttonSetup(offsetX: view.frame.maxX - 65 - 30, imageButton: .heart)
        
        view.addSubview(appNameLabel)
        view.addSubview(image)
        view.addSubview(nameLabel)
        view.addSubview(shevronImage)
        view.addSubview(ageLabel)
        view.addSubview(cancelButton)
        view.addSubview(writeButton)
        view.addSubview(likeButton)
    }
    
    private func buttonSetup(offsetX: CGFloat, imageButton: UIImage) -> UIButton {
        let button = UIButton()
        button.frame = CGRect(x: offsetX, y: image.frame.maxY + 20, width: 65, height: 65)
        button.layer.cornerRadius = 65 / 2
        button.backgroundColor = .systemGray5
        button.imageEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        button.setImage(imageButton, for: .normal)
        return button
    }
}
