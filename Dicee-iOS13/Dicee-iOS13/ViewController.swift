//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Ketu niher paraqitja e qka dojm te editojm
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"),
                         UIImage(imageLiteralResourceName: "DiceTwo"),
                         UIImage(imageLiteralResourceName: "DiceThree"),
                         UIImage(imageLiteralResourceName: "DiceFour"),
                         UIImage(imageLiteralResourceName: "DiceFive"),
                         UIImage(imageLiteralResourceName: "DiceSix"),
        ]
        //ARRAY -> Shenohet brena [] ketyre kllapave
        //LET -> perdoret per te mos ndryshuar ne te ardhmen
        //VAR -> mund te ndryshohet ne te ardhmen nese eshte nevoja
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        //.randomElement() perdoret per te randomizu elementet ne qatë array qe eshte
        //Eshte edhe nje metod tjeter kur dojm te randomizojm elementet "[Int.random(in: 1...10)]"
    }
    
}

