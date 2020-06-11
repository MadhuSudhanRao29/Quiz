//
//  QuizBain.swift
//  Quiz T & F
//
//  Created by Madhu on 19/05/20.
//  Copyright © 2020 Madhu. All rights reserved.
//

import Foundation
struct QuizBrain
{
    // ASSIGNING VALUES
    var qnsNo    = 0
    var score    = 0
    
    // CREATING QUESTIONS FOR QUIZ
    let quiz     =  [
        
        // CALLING QUESTION STRUCTURE AND FILLING QUESTIONS AND ANSWERS
        Question(q:"Presently R U In USA", a:"False"),
        Question(q:"Elephant Flies", a:"False"),
        Question(q:"Dog Swims", a:"True"),
        Question(q:"Is It Raining", a:"False"),
        Question(q:"R U Android Developer", a:"False"),
        Question(q:"Too Much Sweets Harmful To Health", a:"True"),
        Question(q:"Every One Have Car", a:"False"),
        Question(q:"Human Has 2 Eyes", a:"True"),
        Question(q:"Is Every One Rich", a:"False"),
        Question(q:"I Am IOS Developer", a:"True")
                     ]
    
    
    
    func getQuestion()->String
    {
        return quiz[qnsNo].text
    }
    
    
    
    func getScore()->Int
    {
        return score
    }
    
    
    func getProgress()->Float
    {
        return Float(qnsNo) / Float(quiz.count)
    }
    
    
    mutating func getNextQns()
    {
        if (qnsNo + 1 < quiz.count)
        {
            qnsNo += 1
        }
        else
        {
            qnsNo = 0
        }
    }
    
    mutating func checkAnswer(answer : String)->Bool
    {
        if (answer == quiz[qnsNo].answer)
        {
            score +=  1
            return true
        }
        else
        {
            return false
        }
    }
}
