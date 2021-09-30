//
//  randomPt.swift
//  playground
//
//  Created by Марія Кухарчук on 27.09.2021.
//

import Foundation

//MARK: object for generating random DataTypes
public struct RandomNumGenegator {
    /**
     array of the words
     */
    private var words: [String] = []
    
    /**
     class constructor that fills array with data
    */
    public init() {
        words=["you","will","get","a","headache","if","you","think","too","hard"]
//        date = [DateTime(year: 2020,month: 11,day: 2,hour: 14, minute: 45, second: 13),DateTime(year: 2021,month: 6,day: 8,hour: 10, minute: 2, second: 48),DateTime(year: 2018,month: 2,day: 16,hour: 23, minute: 15, second: 57)]
    }
    
    /**
     function that returns random integer
     Parameter start: from what number
     Parameter end: to what number
     Return: random integer
    */
    public func randomInteger(_ start:Int,_ end: Int) -> Int {
        return Int.random(in: start...end)
    }
    
    /**
     function that returns random Double
     Return: random Double
    */
    public func randomDouble()->Double
    {
        let num = Double.random(in: 0.1...99.9)
        return num.roundToPlaces(places: 2)
    }
    
    /**
     function that returns random word
     Return: random word
    */
    public func randomWord()->String
    {
        let index=Int.random(in: 0...words.count-1)
        return words[index]
    }
    
    /**
     function that returns random date
     Return: random date
    */
    public func randomDate()->DateTime{
        return DateTime()
    }
}

