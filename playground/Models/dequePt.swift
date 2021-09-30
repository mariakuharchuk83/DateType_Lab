//
//  dequePt.swift
//  playground
//
//  Created by Марія Кухарчук on 28.09.2021.
//

import Foundation

//MARK: generic class for defining the Deque inherited from the protocol with simple functions for DataTypes
public class Deque<T>:CanBeChangedData {
    public  typealias Element = T
    
    /**
    Deque elements on the base of Array
    */
  private var array = [T]()

    /**
    varible for checking is Deque empty
    */
  public var isEmpty: Bool {
    return array.isEmpty
  }

    /**
    amount of the elements
    */
  public var count: Int {
    return array.count
  }
    /**
     class constructor that add element
     Parameter val: data that we want to add to the Deque
    */
    public init(_ val:T){
      addElement(val)
    }
    
    /**
    empty class constructor
    */
    public init(){
    }
    
    /**
    function that adds new element at the first of Deque
    Parameter val: data that we want to add to the Deque
    */
    public func addElement(_ value: T) {
      array.insert(value, at: 0)
    }

    /**
    function that adds new element at the end of Deque
    Parameter val: data that we want to add to the Deque
    */
  public func addElementInEnd(_ value: T) {
    array.append(value)
  }

    /**
    function that deletes first element
    */
  public func deleteElement() {
    if !isEmpty {
        array.removeFirst()
    }
  }

    /**
    function that deletes last element
    */
  public func deleteElementBack() {
    if !isEmpty {
        array.removeLast()
    }
  }
    
    /**
    function that returns current amount of the elements
     Return: current amount of the elements
    */
  public func getAmount() -> Int {
        return count
    }

    /**
    function that returns element by position
     Parameter i: position
     Returns: element by position
    */
  public subscript(i: Int) -> T? {
        return array[i]
  }
    
    /**
    function that returns first element
     Returns: first element
    */
  public func getFirst() -> T? {
    return array.first
  }

    /**
    function that returns last element
     Returns: last element
    */
  public func getLast() -> T? {
    return array.last
  }
  
    /**
    function that prints Deque
    */
  public  func printElements() {
    for el in 0...count-1{
    print("[\(el)] \(array[el])")
    }
  }
      
}


