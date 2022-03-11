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
        if player1.count + player2.count > 8 {
            switch winLabel.text {
            case "Blue Wins!":
                break
            case "Red Wins!":
                break
            default:
                winLabel.text = "Tic-Tac-Tie!"
            }
        }
    }
    
    func buttonStatments(x: Int, sender: UIButton) {
        if completed {
        }
        else {
            if color == UIColor.blue {
                winLabel.text = "Reds Turn!"
                player1.append(x)
            }
            else {
                winLabel.text = "Blues Turn!"
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
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        button1.backgroundColor = UIColor.systemGray
        button2.backgroundColor = UIColor.systemGray
        button3.backgroundColor = UIColor.systemGray
        button4.backgroundColor = UIColor.systemGray
        button5.backgroundColor = UIColor.systemGray
        button6.backgroundColor = UIColor.systemGray
        button7.backgroundColor = UIColor.systemGray
        button8.backgroundColor = UIColor.systemGray
        button9.backgroundColor = UIColor.systemGray
        
        button1.isEnabled = true
        button2.isEnabled = true
        button3.isEnabled = true
        button4.isEnabled = true
        button5.isEnabled = true
        button6.isEnabled = true
        button7.isEnabled = true
        button8.isEnabled = true
        button9.isEnabled = true
        
        color = UIColor.blue
        player1 = [Int]()
        player2 = [Int]()
        completed = false
        winLabel.text = "Click to Play!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

