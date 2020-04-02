//
//  Question.swift
//  HalloweenTrivia
//
//  Created by teresa.odera on 3/14/18.
//  Copyright © 2018 teresa.odera. All rights reserved.
//

import Foundation
class Question {
    let questionImage: String
    let question:String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let rightAnswer: Int
    
    init(image: String, questionText:String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int){
        questionImage = image
        question = questionText
        optionA = choiceA
        optionB =  choiceB
        optionC =  choiceC
        optionD =  choiceD
        rightAnswer = answer
    }
    

}
