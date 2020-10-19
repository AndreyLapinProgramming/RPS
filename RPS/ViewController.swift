//
//  ViewController.swift
//  RPS
//
//  Created by Андрей Лапин on 19.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winCounterLabel: UILabel!
    
    
    @IBOutlet weak var playAgainOutlet: UIButton!
    @IBOutlet weak var rockBtnOutlet: UIButton!
    @IBOutlet weak var paperBtnOutlet: UIButton!
    @IBOutlet weak var scissorsBtnOutlet: UIButton!
    
    
    @IBOutlet weak var robotLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func rockButton(_ sender: Any) {
        play(sign: .rock)
        rockBtnOutlet.isEnabled = false
    }
    @IBAction func paperBtn(_ sender: Any) {
        play(sign: .paper)
        paperBtnOutlet.isEnabled = false
    }
    @IBAction func scissorsBtn(_ sender: Any) {
        play(sign: .scissors)
        scissorsBtnOutlet.isEnabled = false
    }
    @IBAction func resetButton(_ sender: Any) {
        reset()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playAgainOutlet.isHidden = true
    }
    
    func reset() {
        statusLabel.text = "Rock, Paper, Scissors"
        rockBtnOutlet.isHidden = false
        paperBtnOutlet.isHidden = false
        scissorsBtnOutlet.isHidden = false
        robotLabel.text = "🤖"
        view.backgroundColor = UIColor.white
        playAgainOutlet.isHidden = true
        
        
        rockBtnOutlet.isEnabled = true
        scissorsBtnOutlet.isEnabled = true
        paperBtnOutlet.isEnabled = true
    }
    
    var counterWins = 0

    func play(sign: Sign) {
        
        
        let computerChoice = randomSign()
        
        let comp = computerChoice.emoji
        
        robotLabel.text = comp
        
        
        switch sign {
        case .rock:
            rockBtnOutlet.isHidden = false
            paperBtnOutlet.isHidden = true
            scissorsBtnOutlet.isHidden = true
        case .paper:
            rockBtnOutlet.isHidden = true
            paperBtnOutlet.isHidden = false
            scissorsBtnOutlet.isHidden = true
        default:
            rockBtnOutlet.isHidden = true
            paperBtnOutlet.isHidden = true
            scissorsBtnOutlet.isHidden = false
        }
        
        
        let result = sign.getResult(oposite: computerChoice)
        
        switch result {
        case .win:
            statusLabel.text = "It'a win!"
            view.backgroundColor = UIColor.green
            counterWins += 1
            winCounterLabel.text = String(counterWins)
        case .lose:
            statusLabel.text = "You lose!"
            view.backgroundColor = UIColor.red
        case .draw:
            statusLabel.text = "It'a draw!"
            view.backgroundColor = UIColor.gray
        }
        
        playAgainOutlet.isHidden = false
        
        
        
    }
    
    
}

