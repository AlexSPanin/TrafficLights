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
    
    var counterPressed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 40
        redView.alpha = 0.3
        yellowView.layer.cornerRadius = 40
        yellowView.alpha = 0.3
        greenView.layer.cornerRadius = 40
        greenView.alpha = 0.3
        startButton.setTitle("START", for: .normal)
    }

    @IBAction func pressedButton() {
            counterPressed += 1
            startButton.setTitle("NEXT", for: .normal)
            switch counterPressed {
        case 1:
            redView.alpha = 1
        case 2:
            redView.alpha = 0.3
            yellowView.alpha = 1
        case 3:
            yellowView.alpha = 0.3
            greenView.alpha = 1
        default:
            greenView.alpha = 0.3
            startButton.setTitle("START", for: .normal)
            counterPressed = 0
            }
        }
}
