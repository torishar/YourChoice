//
//  MainChoiceViewController.swift
//  m2_les5
//
//  Created by Viktoriia Sharukhina on 14.01.2023.
//

import UIKit

class MainChoiceViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.backButtonTitle = "to the choice"
        self.view.backgroundColor = UIColor(named: "mainColor")
        
        earthBtnOutlet.tintColor = UIColor(named: "earthColor")
        waterBtnOutlet.tintColor = UIColor(named: "waterColor")
        fireBtnOutlet.tintColor = UIColor(named: "fireColor")
        airBtnOutlet.tintColor = UIColor(named: "airColor")
        
        titleLabel.textColor = UIColor(named: "mainColorText")
        navigationController?.navigationBar.tintColor = UIColor(named: "mainColorText")
        
    }
    
    var elementText: String?
    var elementImage: UIImage?
    var colorTextBtn: UIColor?
    
    @IBAction func earthBtn(_ sender: UIButton) {
        self.elementText = "earth"
        self.elementImage = UIImage(named: "earth")
        self.colorTextBtn = UIColor(named: "earthColor")
        performSegue(withIdentifier: "choiceElement", sender: nil)
    }
    
    @IBOutlet weak var earthBtnOutlet: UIButton!
    
    @IBAction func waterBtn(_ sender: UIButton) {
        self.elementText = "water"
        self.elementImage = UIImage(named: "water")
        self.colorTextBtn = UIColor(named: "waterColor")
        performSegue(withIdentifier: "choiceElement", sender: nil)
    }
    
    @IBOutlet weak var waterBtnOutlet: UIButton!
    
    
    @IBAction func fireBtn(_ sender: UIButton) {
        self.elementText = "fire"
        self.elementImage = UIImage(named: "fire")
        self.colorTextBtn = UIColor(named: "fireColor")
        performSegue(withIdentifier: "choiceElement", sender: nil)
    }
    
    @IBOutlet weak var fireBtnOutlet: UIButton!
    
    @IBAction func airBtn(_ sender: Any) {
        self.elementText = "air"
        self.elementImage = UIImage(named: "air")
        self.colorTextBtn = UIColor(named: "airColor")
        performSegue(withIdentifier: "choiceElement", sender: nil)
        
    }
    
    @IBOutlet weak var airBtnOutlet: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "choiceElement" {
            if let desdinationVC = segue.destination as? YourChoiceViewController {
//                desdinationVC.elementImage.image = self.elementtImage
//                desdinationVC.elemeentLabel.text = self.elementText
                
                desdinationVC.elementTextIntermediate = self.elementText
                desdinationVC.elementImageIntermediate = self.elementImage
                desdinationVC.tintColorButton = self.colorTextBtn
            }
        }
    }
    
}
