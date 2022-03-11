//
//  ViewController.swift
//  TicTacToe
//
//  Created by Prince Avecillas on 3/10/22.
//

import UIKit

class ViewController: UIViewController {
    var color = UIColor.blue
    
    func actionz(sender: UIButton) {
        sender.backgroundColor = color
        color = color == UIColor.blue ? UIColor.red : UIColor.blue
        (sender as? UIButton)?.isEnabled = false
    }
    
    @IBAction func button1(_ sender: UIButton) {
        actionz(sender: sender)
    }
    
    @IBAction func button2(_ sender: UIButton) {
        actionz(sender: sender)
    }
    
    @IBAction func button3(_ sender: UIButton) {
        actionz(sender: sender)
    }
    
    @IBAction func button4(_ sender: UIButton) {
        actionz(sender: sender)
    }
    
    @IBAction func button5(_ sender: UIButton) {
        actionz(sender: sender)
    }
    
    @IBAction func button6(_ sender: UIButton) {
        actionz(sender: sender)
    }
    
    @IBAction func button7(_ sender: UIButton) {
        actionz(sender: sender)
    }
    
    @IBAction func button8(_ sender: UIButton) {
        actionz(sender: sender)
    }
    
    @IBAction func button9(_ sender: UIButton) {
        actionz(sender: sender)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

