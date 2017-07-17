//
//  Flashcard.swift
//  Flashcard
//
//  Created by iD Student on 7/17/17.
//  Copyright © 2017 iD Student. All rights reserved.
//

import Foundation

class Flashcard{
    var question : String
    
    var options : [String]
    var correctAnswer : String
    
    init(question : String, options : [String]){
        self.question = question
        self.options = options
        
        self.correctAnswer = options[0]
    }
}

class CardCollection {
    
    // Single instance of the card collection
    public static var instance : CardCollection = CardCollection()
    
    public private(set) var cards : [Flashcard]
    
    public private(set) var currentIndex : Int
    
    public var currentCard : Flashcard {
        get { return cards[currentIndex] }
    }
    
    private init(){
        
        cards = [ Flashcard(question: "Test Question", options: ["True","False"]),
                  Flashcard(question: "What's the capitol of Washington state?", options:["Olympia", "Tacoma", "Seattle", "Spokane"]),
                  Flashcard(question: "Where is iD Tech's headquarters?", options:["Campbell, CA", "Albequerque, NM", "Beijing, CN"])]
        
        currentIndex = 0;
        
    }
    
    
}
