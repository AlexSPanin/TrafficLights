//
//  ViewController.swift
//  TrafficLights
//
//  Created by Александр Панин on 07.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    let ligthOFF = 0.3
    let ligthON = 1.0
    
    var counterPressed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = ligthOFF
        yellowView.alpha = ligthOFF
        greenView.alpha = ligthOFF
        
        redView.layer.cornerRadius = redView.frame.height / 3
        yellowView.layer.cornerRadius = yellowView.frame.height / 3
        greenView.layer.cornerRadius = greenView.frame.height / 3

        startButton.setTitle("START", for: .normal)
    }

    @IBAction func pressedButton() {
            counterPressed += 1
            startButton.setTitle("NEXT", for: .normal)
            
        switch counterPressed {
        case 1:
            redView.alpha = ligthON
        case 2:
            redView.alpha = ligthOFF
            yellowView.alpha = ligthON
        case 3:
            yellowView.alpha = ligthOFF
            greenView.alpha = ligthON
        default:
            greenView.alpha = ligthOFF
            startButton.setTitle("START", for: .normal)
            counterPressed = 0
            }
        }
}
