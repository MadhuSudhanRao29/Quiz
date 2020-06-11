//
//  ViewController.swift
//  Quiz T & F
//
//  Created by Madhu on 19/05/20.
//  Copyright © 2020 Madhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //CREATING VARIABLE TO STRUCT
    var quizBrain    =   QuizBrain()
      
    
    //CREATING OUTLETS FOR EACH ONE
    @IBOutlet weak var qnsLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    
    
    // CREATING ONE OUTLET FOR ALL BUTTONS
    @IBAction func buttonPressed(_ sender: UIButton)
    {
        
        //ASSIGNING USER PRESSED BUTTON TITLE
        let answer = sender.currentTitle!
       
        // RECEIVING ANSWER FROM STRUCT FUNCTION
        let received = quizBrain.checkAnswer(answer: answer)
        
        if (received)
        {
            //ASSIGNING COLOUR TO USER PRESSED BUTTON
            sender.backgroundColor = .green
        }
        else
        {
            //ASSIGNING COLOUR TO USER PRESSED BUTTON
            sender.backgroundColor  = .red
        }
        
        // GETTING NEXT QUESTION
        quizBrain.getNextQns()
        
        
        // ALLOCATING TIMER FOR REFRESH THE WHOLE SCREEN
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    
    
    @objc func updateUI()
    {
        // ASSIGNING QUESTION FROM STRUCT FUNCTION
        qnsLabel.text          = quizBrain.getQuestion()
        
        // ASSIGNING SCORE FROM STRUCT FUNCTION
        scoreLabel.text        = " Score is : \(quizBrain.getScore())"
        
        // ASSIGNING PROGRESS FROM STRUCT FUNCTION
        progressBar.progress   = quizBrain.getProgress()
        
        
        // ASSIGNING BUTTONS COLORS
        trueButton.backgroundColor   = .white
        falseButton.backgroundColor  = .white
        
    }
    
    
  override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // CALLOING THE FUNCTION
        updateUI()
        
       // APPLYING THE DESIGN
        trueButton.applyDesign()
        falseButton.applyDesign()
    }
}


// CREATING AN EXTRA FUNCTION FOR BUTTONS
extension UIButton
{
    func applyDesign()
    {
        self.layer.cornerRadius = self.frame.height/2
    }
}
