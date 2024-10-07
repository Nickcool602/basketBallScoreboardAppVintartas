//
//  ViewController.swift
//  basketBallScoreboardAppVintartas
//
//  Created by Nicholas Vintartas on 10/7/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreOutlet: UILabel!
    
    @IBOutlet weak var scoreOutlet2: UILabel!
    
    @IBOutlet weak var team1Field: UITextField!
    
    @IBOutlet weak var team2Field: UITextField!
    
    @IBOutlet weak var team1Label: UILabel!
    
    @IBOutlet weak var team2Label: UILabel!
    
    @IBOutlet weak var winningTeamOutlet: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    var score = 0
    
    var score2 = 0
    
    var team1 = ""
    
    var team2 = ""
    
    var lastAction = ""
    
    func update() {
        if score < 0 {
            score = 0
        }
        if score2 < 0 {
            score2 = 0
        }
        team1 = team1Field.text ?? "Team 1"
        team2 = team2Field.text ?? "Team 2"
        if team1 == "" {
            team1 = "Team 1"
        }
        if team2 == "" {
            team2 = "Team 2"
        }
        scoreOutlet.text = "\(team1): \(score)"
        scoreOutlet2.text = "\(team2): \(score2)"
        team1Label.text = team1
        team2Label.text = team2
        if score == score2 {
            winningTeamOutlet.text = "Tied"
        }
        else if score > score2 {
            winningTeamOutlet.text = "\(team1) is winning!"
        }
        else if score < score2 {
            winningTeamOutlet.text = "\(team2) is winning!"
        }
        else {
            winningTeamOutlet.text = "Error"
        }
        scoreLabel.text = "\(score):\(score2)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func undo(_ sender: Any) {
        if lastAction == "1:1"{
            lastAction = ""
            score = score - 1
        }
        else if lastAction == "1:2" {
            lastAction = ""
            score = score - 2
        }
        else if lastAction == "1:3" {
            lastAction = ""
            score = score - 3
        }
        else if lastAction == "2:1" {
            lastAction = ""
            score2 = score2 - 1
        }
        else if lastAction == "2:2" {
            lastAction = ""
            score2 = score2 - 2
        }
        else if lastAction == "2:3" {
            lastAction = ""
            score2 = score2 - 3
        }
        else if lastAction == "1:-1"{
            lastAction = ""
            score = score + 1
        }
        else if lastAction == "1:-2" {
            lastAction = ""
            score = score + 2
        }
        else if lastAction == "1:-3" {
            lastAction = ""
            score = score + 3
        }
        else if lastAction == "2:-1" {
            lastAction = ""
            score2 = score2 + 1
        }
        else if lastAction == "2:-2" {
            lastAction = ""
            score2 = score2 + 2
        }
        else if lastAction == "2:-3" {
            lastAction = ""
            score2 = score2 + 3
        }
        
        update()
        
    }
    
    @IBAction func oneOneButton(_ sender: Any) {
        score = score + 1
        update()
        lastAction = "1:1"
    }
    
    @IBAction func oneTwoButton(_ sender: Any) {
        score = score + 2
        update()
        lastAction = "1:2"
    }
    
    @IBAction func oneThreeButton(_ sender: Any) {
        score = score + 3
        update()
        lastAction = "1:3"
    }
    
    @IBAction func twoOneButton(_ sender: Any) {
        score2 = score2 + 1
        update()
        lastAction = "2:1"
    }
    
    @IBAction func twoTwoButton(_ sender: Any) {
        score2 = score2 + 2
        update()
        lastAction = "2:2"
    }
    
    @IBAction func twoThreeButton(_ sender: Any) {
        score2 = score2 + 3
        update()
        lastAction = "2:3"
    }
    
    @IBAction func oneLessOneButton(_ sender: Any) {
        score = score - 1
        update()
        lastAction = "1:-1"
    }
    
    @IBAction func oneLessTwoButton(_ sender: Any) {
        score = score - 2
        update()
        lastAction = "1:-2"
    }
    
    @IBAction func oneLessThreeButton(_ sender: Any) {
        score = score - 3
        update()
        lastAction = "1:-3"
    }
    
    @IBAction func twoLessOneButton(_ sender: Any) {
        score2 = score2 - 1
        update()
        lastAction = "2:-1"
    }
    
    @IBAction func twoLessTwoButton(_ sender: Any) {
        score2 = score2 - 2
        update()
        lastAction = "2:-2"
    }
    
    @IBAction func twoLessThreeButton(_ sender: Any) {
        score2 = score2 - 3
        update()
        lastAction = "2:3-3"
    }
    
    
}

