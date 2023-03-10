//  ViewController.swift
//  AnimationAppHW
//  Created by Carolina on 19.12.22.

import UIKit
import Spring

final class ViewController: UIViewController {

    @IBOutlet private weak var animationName: UILabel!
    @IBOutlet private weak var springView: SpringView!
    @IBOutlet private weak var force: UILabel!
    @IBOutlet private weak var duration: UILabel!
    @IBOutlet private weak var delay: UILabel!
    @IBOutlet private weak var curve: UILabel!
    @IBOutlet private weak var enterBtn: UIButton!
    
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
        force.text = Properties.getRandomProperties().description
        springView.force = Properties.getRandomProperties()
        // продолжительность
        duration.text = Properties.getRandomProperties().description
        springView.duration = Properties.getRandomProperties()
        // задержка
        delay.text = Properties.getRandomProperties().description
        springView.delay = Properties.getRandomProperties()
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

