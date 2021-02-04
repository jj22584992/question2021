//
//  QuestionViewController.swift
//  question2021
//
//  Created by 楊易學 on 2021/2/3.
//

import UIKit
import GameKit

class QuestionViewController: UIViewController {
    
   
    @IBOutlet weak var questionCountLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var choiceButtons: [UIButton]!
    @IBOutlet weak var progressView: UIProgressView!
    
    var distribution: GKShuffledDistribution? // 讓裡面nil
    var questionCount = 0 // 題號
    var number = 0
    var score = 0 //累計分數
    
    
    func nextQuestion() {
        number = distribution!.nextInt()
        questionCount = questionCount + 1
        progressView.progress += 0.1
        if questionCount == questions.count + 1 { // 題庫總共有10題，當button pressed按下去要到第10，才會顯示得分頁面
            performSegue(withIdentifier: "showResult", sender: nil)
        }else{
            updateUI()
        }
        
    }
    
    func updateUI() {
        let question = questions[number]
        questionCountLabel.text = "\(questionCount)"
        questionLabel.text = question.discription
        var i = 0
        for choiceButton in choiceButtons {
            choiceButton.setTitle(question.choice[i], for: UIControl.State.normal)
            i = i + 1
        }
    }
    
   
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        let question = questions[number]
        let buttonIndex = choiceButtons.firstIndex(of: sender)
        if question.choice[buttonIndex!] == question.rightAnswer {
            score = score + 10
        }
        nextQuestion()
    }
    
    @IBAction func unwindToMultipleChoicePage(segue: UIStoryboardSegue) {
        distribution = GKShuffledDistribution(lowestValue: 0, highestValue: questions.count - 1) // 重新隨機出題
        number = distribution!.nextInt()
        questionCount = 1 // 使出題數量
        score = 0
        progressView.progress = 0
        updateUI()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        distribution = GKShuffledDistribution(lowestValue: 0, highestValue: questions.count - 1)
        number = distribution!.nextInt()
        questionCount = questionCount + 1
        progressView.progress = 0
        updateUI()
        print(questions.count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let controller = segue.destination as! ResultViewController
        controller.score = score
        
    }
}
