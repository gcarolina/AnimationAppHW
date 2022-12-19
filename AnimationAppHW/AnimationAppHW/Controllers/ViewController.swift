//  ViewController.swift
//  AnimationAppHW
//  Created by Carolina on 19.12.22.

import UIKit
import Spring

class ViewController: UIViewController {

    @IBOutlet weak var animationName: UILabel!
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var force: UILabel!
    @IBOutlet weak var duration: UILabel!
    @IBOutlet weak var delay: UILabel!
    @IBOutlet weak var curve: UILabel!
    @IBOutlet weak var enterBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    
    @IBAction func enterAction(_ sender: UIButton) {
        
        springView.backgroundColor = .random()
        // тип анимации
        animationName.text = AnimationType.allCases.randomElement()!.rawValue
        springView.animation = AnimationType.allCases.randomElement()!.rawValue
        // сила
        force.text = Properties.getRandomForce().description
        springView.force = Properties.getRandomForce()
        // продолжительность
        duration.text = Properties.getRandomDuration().description
        springView.duration = Properties.getRandomDuration()
        // задержка
        delay.text = Properties.getRandomDelay().description
        springView.delay = Properties.getRandomDelay()
        // анимационная кривая
        curve.text = Curve.allCases.randomElement()!.rawValue
        // старт анимации
        springView.animate()
    }
    
    private func setupUI() {
        springView.layer.cornerRadius = springView.frame.size.height / 2
        enterBtn.layer.cornerRadius = enterBtn.frame.size.height / 2
    }
}

