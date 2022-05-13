//
//  ViewController.swift
//  SpringAnimation_Lesson_2_9
//
//  Created by Андрей Барсук on 13.05.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var playAnimationButton: UIButton!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationLabel.text = animation.description
        playAnimationButton.setTitle("Play \(animation.name)", for: .normal)
    }

    @IBAction func playAnimationButtonPressed(_ sender: UIButton) {
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        animationLabel.text = animation.description
        sender.setTitle("Play \(animation.name)", for: .normal)
    }
}

