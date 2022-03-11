//
//  ViewController.swift
//  TicTacToe
//
//  Created by Prince Avecillas on 3/10/22.
//

import UIKit

class ViewController: UIViewController {
    var color = UIColor.blue
    var player1 = [Int]()
    var player2 = [Int]()
    var completed = false
    
    func tictactoe(_ arr: [Int]) -> Bool {
      if (arr.count <= 2) {
        return false
      }
      let solutions = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
      for solution in solutions {
        var solved = true
        for ele in solution {
          if !arr.contains(ele) {
            solved = false
            break
          }
        }
        if solved {
          return true
        }
      }
      return false
    }
    
    func actionz(sender: UIButton) {
        sender.backgroundColor = color
        color = color == UIColor.blue ? UIColor.red : UIColor.blue
        (sender as? UIButton)?.isEnabled = false
        if tictactoe(player1) {
            completed = true
            winLabel.text = "Blue Wins!"
        }
        if tictactoe(player2) {
            completed = true
            winLabel.text = "Red Wins!"
        }
    }
    
    func buttonStatments(x: Int, sender: UIButton) {
        if completed {
        }
        else {
            if color == UIColor.blue {
                player1.append(x)
            }
            else {
                player2.append(x)
            }
            actionz(sender: sender)
        }
    }
    
    
    @IBAction func button1(_ sender: UIButton) {
        let x = 1
        buttonStatments(x: x, sender: sender)
    }
    
    @IBAction func button2(_ sender: UIButton) {
        let x = 2
        buttonStatments(x: x, sender: sender)
    }
    
    @IBAction func button3(_ sender: UIButton) {
        let x = 3
        buttonStatments(x: x, sender: sender)
    }
    
    @IBAction func button4(_ sender: UIButton) {
        let x = 4
        buttonStatments(x: x, sender: sender)
    }
    
    @IBAction func button5(_ sender: UIButton) {
        let x = 5
        buttonStatments(x: x, sender: sender)
    }
    
    @IBAction func button6(_ sender: UIButton) {
        let x = 6
        buttonStatments(x: x, sender: sender)
    }
    
    @IBAction func button7(_ sender: UIButton) {
        let x = 7
        buttonStatments(x: x, sender: sender)
    }
    
    @IBAction func button8(_ sender: UIButton) {
        let x = 8
        buttonStatments(x: x, sender: sender)
    }
    
    @IBAction func button9(_ sender: UIButton) {
        let x = 9
        buttonStatments(x: x, sender: sender)
    }
    
    @IBOutlet weak var winLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

