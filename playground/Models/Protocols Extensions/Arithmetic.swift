//
//  Arithmetic.swift
//  playground
//
//  Created by Марія Кухарчук on 28.09.2021.
//

import Foundation

/**
 function that adds two numbers with same type that inherited from protocol Number
 Parameter val1: first number
 Parameter val2: second number
 Return: sum of val1 and val2
*/
public func +<T: Calculations>(val1: T, val2: T) -> T {
    return val1 + val2
}

/**
 function that substracts two numbers with same type that inherited from protocol Number
 Parameter val1: first number
 Parameter val2: second number
 Return: result of substracting
*/
public func -<T: Calculations>(val1: T, val2: T) -> T {
    return val1 - val2
}

/**
 function that multiplies two numbers with same type that inherited from protocol Number
 Parameter val1: first number
 Parameter val2: second number
 Return: result of multyplying
*/
public func *<T: Calculations>(val1: T, val2: T) -> T {
    return val1 * val2
}

/**
 function that divides two numbers with same type that inherited from protocol Number
 Parameter val1: first number
 Parameter val2: second number
 Return: result of dividing
*/
public func /<T: Calculations>(val1: T, val2: T) -> T {
    return val1 / val2
}

