//
//  checkingFunc.swift
//  playground
//
//  Created by Марія Кухарчук on 27.09.2021.
//

import Foundation


//MARK: object for testing DataTypes with any Data
public class Start{
    /*!Data instances*/
    public let randomNumGener = RandomNumGenegator()
    private var stackOfDouble = Stack<Double>()
    private var queueOfString = Queue<String>()
    private var dequeOfData = Deque<DateTime>()
    
    
    /**empty class constructor*/
    public init(){
       
    }
    
    /**
     Generic function for filling Data with needed types
     
     Parameter NeededF: function for calling from instance to fill it
     Parameter SecondNeededF: function for getting random needed type from class RandomNumGenegator
     */
    private func filling<T>(NeededF: (T) ->Void, SecondNeedF: () -> T){
        var count = 10
        while count>0 {
           NeededF(SecondNeedF())
            count-=1
        }
    }
    
 //MARK: Function for working with type Double using Stack
    public func CheckStack(){
        //simple func for printing current data
        func printNums(){
            print("\nPRINTING RANDOM NUMBERS\n")
            stackOfDouble.printElements()
        }
        
        //filling
        print("\nTESTING STACK WITH NUMBERS")
        filling(NeededF: stackOfDouble.addElement, SecondNeedF: randomNumGener.randomDouble)
        printNums()
        
        //Testing main functions
        print("Amount:\(stackOfDouble.getAmount())\n")
        print("\nDELETING FIRTS VALUE")
        stackOfDouble.deleteElement()
        printNums()
        
        //Testing working with mathmatical operations
        print("\nOPERATIONS\n")
        var val = stackOfDouble[2]! + stackOfDouble[3]!
        print("NUM3 + NUM4 = \(val.roundToPlaces(places: 2))\n")
        val = stackOfDouble[0]! - stackOfDouble[1]!
        print("NUM1 - NUM2 = \(val.roundToPlaces(places: 2))\n")
        val = stackOfDouble[5]! / stackOfDouble[6]!
        print("NUM6 / NUM7 = \(val.roundToPlaces(places: 2))\n")
        val = stackOfDouble[2]! * stackOfDouble[4]!
        print("NUM3 * NUM5 = \(val.roundToPlaces(places: 2))\n")
        val = stackOfDouble[7]! ^^ stackOfDouble[8]!
        print("\nPOWER")
        print("NUM8 ^^ NUM9 = \(val.roundToPlaces(places: 2))\n")
        val = Double.logA(value: stackOfDouble[2]!, forBase: 2.72)
        print("NATURAL log(NUM3) = \(val.roundToPlaces(places: 2))\n")
        val = Double.logA(value: stackOfDouble[2]!, forBase: 5)
        print("log(NUM3) FOR BASE 5  = \(val.roundToPlaces(places: 2))\n")
        print("\nTRIGONOMETRY")
        val = Double.sinus(val: stackOfDouble[0]!)
        print("sin(NUM1) = \(val.roundToPlaces(places: 2))\n")
        val = Double.cosin(val: stackOfDouble[0]!)
        print("cos(NUM1) = \(val.roundToPlaces(places: 2))\n")
        val = Double.tangen(val: stackOfDouble[0]!)
        print("tan(NUM1) = \(val.roundToPlaces(places: 2))\n")
        val = Double.cotangen(val: stackOfDouble[0]!)
        print("cot(NUM1) = \(val.roundToPlaces(places: 2))\n")
    }
    
    
    //MARK: Function for working with type String using Queue on the base of linked list
    public func CheckQueue(){
        //simple func for printing current data
        func printWords(){
            print("\nPRINTING RANDOM WORDS\n")
            queueOfString.printElements()
        }
        
        //filling
        print("\nTESTING QUEUE WITH WORDS")
        filling(NeededF: queueOfString.addElement, SecondNeedF: randomNumGener.randomWord)
        printWords()
        
        //Testing main functions
        print("\nAmount: \(queueOfString.getAmount())\n")
        
        print("\nFirst word: \(queueOfString.peek()!)\n")
        print("\nLast word: \(queueOfString.peekTail()!)\n")
        
        //Adding two strings to create 
        print("\nSentence using first and last elements: \(queueOfString.peekTail()!+" "+queueOfString.peek()!)")
        
        print("\nDELETING FIRTS VALUE")
        queueOfString.deleteElement()
        printWords()
        
    }
    
    //MARK: Function for working with DateTime class using Deque on the base of Array
    public func CheckDeque(){
        func printDateAndTime(){
            print("\nPRINTING RANDOM DATE AND TIME\n")
            for dt in 0...dequeOfData.count-1{
                dequeOfData[dt]?.printAllDate()
            }
        }
        
        //filling
        print("\nTESTING DEQUE WITH DATE AND TIME")
        filling(NeededF: dequeOfData.addElement, SecondNeedF: randomNumGener.randomDate)
        printDateAndTime()
        
        //deleting first and last element
        print("\nDELETING FIRTS AND LAST VALUE")
        dequeOfData.deleteElement()
        dequeOfData.deleteElementBack()
        printDateAndTime()
        
        //printing amount
        print("\n\nAmount:\(dequeOfData.getAmount())\n")
        //adding new date
        print("\nADD ELEMENT IN SATRT")
        dequeOfData.addElement(randomNumGener.randomDate())
        printDateAndTime()
    }
    
    /**
     function for working with date
     */
    public func ParsingDate(){
        print("\n\n\nTESTING DATE AND TIME FITURES")
        
        //create first random date
        let date1 = DateTime()
        print("[1] DATE")
        date1.printAllDate()
        
        //print current date's day of the week
        print("\nDay of the week: \(date1.getDayOfWeek())\n")
        
        //print if year is leap
        if date1.isYearLeap(year: date1.getYear()){
            print("Year is Leap\n")
        }
        else{
            print("Year isn't Leap\n")
        }
        
        //create second random date
        let date2 = DateTime()
        print("[2] DATE")
        date2.printAllDate()
        
        //substract from the first date second date and taking this date in days value
        let days = date1.daysSubstraction(D: date2)
        
        //add substracted days to the first date 
        date1.substractionAdding(days: days)
        print("\ndays between first date and second: \(days)\n")
        print("First date after adding substraction:")
        date1.printAllDate()
    }
    
    
}



