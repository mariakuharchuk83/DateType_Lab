//
//  Protocols.swift
//  playground
//
//  Created by Марія Кухарчук on 27.09.2021.
//

import Foundation
import Darwin

//MARK: generic protocol with simple functions for working with DataTypes
public protocol CanBeChangedData{
    /**generic type of the protocol*/
    associatedtype Element
    
    //function that adds element
    func addElement(_ value: Element)
    //function that deletes element
    func deleteElement()
    //function that returns current amount of the elements
    func getAmount()-> Int
    //function that output elements
    func printElements()
}

//MARK: defining new operator ^^
precedencegroup ExponentiationPrecedence {
  associativity: right
  higherThan: MultiplicationPrecedence
}
infix operator ^^ : ExponentiationPrecedence

//MARK: protocol for working with numbers\strings using generics
public protocol Calculations{
    static func +(val1: Self, val2: Self) -> Self  //2+2=4
    static func -(val1: Self, val2: Self) -> Self  //2-2=0
    static func *(val1: Self, val2: Self) -> Self  //2*2=4
    static func /(val1: Self, val2: Self) -> Self  //2/2=1
    static func ^^(val1: Self, val2: Self) -> Self //2^2=4
}

//MARK: overriding type Double for adding new functionality
extension Double :Calculations {
    /**
        function for rounding number (type Double) to given places
         Parameter places: how many numbers after point
         Return: rounded number
    */
    public func roundToPlaces(places:Int)->Double{
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded()/divisor
    }
    
    /**
        function for calculating logorithm of given number for given base
         Parameter value: number
         Parameter forBase: base
         Return: calculated logorithm
    */
    public static func logA(value: Double,forBase base: Double)-> Double{
        return log(value)/log(base)
    }
    
    /**
        function for calculating pow
         Parameter val1: main number
         Parameter val2: power
         Return: calculated pow
    */
    public static func ^^ (val1: Double, val2: Double) -> Double {
        return pow(val1, val2)
    }
    
    /**
        function for calculating sinus
         Parameter val: number
         Return: calculated sinus
    */
    public static func sinus(val: Double)->Double{
         return sin(val)
    }
    
    /**
        function for calculating cosinus
         Parameter val: number
         Return: calculated cosinus
    */
    public static func cosin(val: Double)->Double{
         return cos(val)
    }
    
    /**
        function for calculating tangens
         Parameter val: number
         Return: calculated tangens
    */
    public static func tangen(val: Double)->Double{
         return tan(val)
    }
    
    /**
        function for calculating cotangens
         Parameter val: number
         Return: calculated cotangens
    */
    public static func cotangen(val: Double)->Double{
         return 1/tan(val)
    }
}

//MARK: overriding type String for adding new functionality
extension String:Calculations{
    public static func ^^ (val1: String, val2: String) -> String {
        return ""
    }
}


