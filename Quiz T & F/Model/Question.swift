//
//  Question.swift
//  Quiz T & F
//
//  Created by Madhu on 19/05/20.
//  Copyright © 2020 Madhu. All rights reserved.
//

import Foundation

struct Question
{
    let text   : String
    let answer : String
    
    init(q: String,a:String)
    {
        text   = q
        answer = a
    }
}
