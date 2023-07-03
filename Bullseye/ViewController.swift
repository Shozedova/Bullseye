//
//  ViewController.swift
//  Bullseye
//
//  Created by Mehrangez on 21/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gameRound: UILabel!
    @IBOutlet weak var guessingLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    let gameManager = GameManager ()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Я в view controller")
        print("Угодай число", gameManager.guessingNumber)
       
        guessingLabel.text = String (gameManager.guessingNumber)
        gameRound.text = String (gameManager.round)
        scoreLabel.text = String (gameManager.score)
        
}
    @IBAction func handleButtonTap(_ sender: Any) {
        print(slider.value)
        
        if Int(slider.value) == gameManager.guessingNumber
        {
            print ("Вы угодали число")
        } else {
            print ("Попробуйте еще раз")
        }
    }
}
    

