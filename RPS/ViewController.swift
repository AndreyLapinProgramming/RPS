//
//  ViewController.swift
//  RPS
//
//  Created by Андрей Лапин on 19.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winCounterLabel: UILabel!
    
    
    @IBOutlet weak var robotLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func rockButton(_ sender: Any) {
        play(sign: .rock)
    }
    @IBAction func paperBtn(_ sender: Any) {
        play(sign: .paper)
    }
    @IBAction func scissorsBtn(_ sender: Any) {
        play(sign: .scissors)
    }
    @IBAction func resetButton(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func reset() {
        
    }
    
    func play(sign: Sign) {
        let computerChoice = randomSign()
        
        
        var result = sign.getResult(oposite: computerChoice)
        
        
    }
    
    
}

