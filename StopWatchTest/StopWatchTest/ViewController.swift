//
//  ViewController.swift
//  StopWatchTest
//
//  Created by 山本 夏紀 on 2021/01/27.
//

import UIKit

class ViewController: UIViewController {
    var OurTimer = Timer()
    var TimerDisplayed = 0.0
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var counterSwitch: UISwitch!
    @IBOutlet private weak var reset: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterSwitch.isOn = false
    }
    
    @IBAction func counterButton(_ sender: Any) {
        if counterSwitch.isOn {
            OurTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
        } else {
            OurTimer.invalidate()
        }
    }
    @IBAction func resetButton(_ sender: Any) {
        OurTimer.invalidate()
                TimerDisplayed = 0
                label.text = "0"
    }
    @objc func Action() {
        TimerDisplayed += 0.1
            label.text = String(TimerDisplayed)
        }
}

