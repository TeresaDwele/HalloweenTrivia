//
//  ViewController.swift
//  HalloweenTrivia
//
//  Created by teresa.odera on 3/13/18.
//  Copyright © 2018 teresa.odera. All rights reserved.
// Ireceived help from the following link https://www.youtube.com/watch?v=pXbF9RT4C5A

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var lblQuestion: UILabel!
    //button outlets
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int  = 0
    var selectedAnswer: Int  = 0
    var player: AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
        //this catch plays the apps music
        do{
            let audioPath = Bundle.main.path(forResource: "grave-secrets", ofType: ".wav")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            player.play()
        }
        catch
        {
            // PROCESS ERROR
        }
        let session = AVAudioSession.sharedInstance()
        do{
            
            try session.setCategory(AVAudioSessionCategoryPlayback)
            
        }
        catch{}
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //this function decides if the answer is wrong oright
    @IBAction func selectedAnswer(_ sender: UIButton) {
        if sender.tag == selectedAnswer{
            print("correct")
            score += 1
        } else{
            print("wrong")
            
        }
        questionNumber += 1
        updateQuestion()
    }
    
    func updateQuestion(){
        //this stops the program from throwing an exception and instead gives a restart option
        if questionNumber <= allQuestions.list.count - 1 {
            photoView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            lblQuestion.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControlState.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControlState.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControlState.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControlState.normal)
            selectedAnswer = allQuestions.list[questionNumber].rightAnswer
        }else {
            let alert = UIAlertController(title: "well done", message:"would you like to continue?", preferredStyle:.alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert,animated: true, completion: nil)
        }
        updateUI()
    }
    //This function updates the scores
    func updateUI(){
        lblScore.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
    }
    //this function restarts the quiz
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
    }
}

