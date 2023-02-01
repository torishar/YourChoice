//
//  YourChoiceViewController.swift
//  m2_les5
//
//  Created by Viktoriia Sharukhina on 14.01.2023.
//

import UIKit

class YourChoiceViewController: UIViewController {

    @IBOutlet weak var elemeentLabel: UILabel!
    
    @IBOutlet weak var elementImage: UIImageView!
    
    @IBOutlet weak var headerText: UILabel!
    
    @IBOutlet weak var choosedText: UILabel!
    
    //создание промежуточных переменных
    var elementTextIntermediate: String?
    var elementImageIntermediate: UIImage?
    var tintColorButton: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerText.textColor = UIColor(named: "mainColorText")
        choosedText.textColor = UIColor(named: "mainColorText")
        
        self.view.backgroundColor = UIColor(named: "mainColor")
        
        self.elemeentLabel.text = elementTextIntermediate
        self.elementImage.image = elementImageIntermediate
        self.elemeentLabel.textColor = tintColorButton
        
    }
    

}
