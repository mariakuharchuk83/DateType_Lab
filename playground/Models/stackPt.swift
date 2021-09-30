//
//  stackPt.swift
//  playground
//
//  Created by Марія Кухарчук on 21.09.2021.
//

import Foundation

//MARK: generic class for defining the Stack inherited from the protocol with simple functions for DataTypes
class Stack<T>: CanBeChangedData {
    public typealias Element = T
    
    /**
    Stack elements on the base of Array
    */
    private var items = [T]()
    
    /**
    amount of the elements
    */
    private var count: Int {
        return items.count
    }
    
    /**
    varible for checking is Stack empty
    */
    public var isEmpty: Bool {
      return items.isEmpty
    }
    
    /**
     class constructor that add element
     Parameter val: data that we want to add to the Stack
    */
    public init(_ val:T){
      addElement(val)
    }
    
    /**
    empty class constructor
    */
    public init() {
    }
    
    /**
    function that adds new element at the 0 place of Stack
    Parameter val: data that we want to add to the Stack
    */
    public func addElement(_ item: T) {
        items.insert(item, at: 0)
    }
    
    /**
    function that deletes last element of the Stack
    */
    public func deleteElement()
    {
        if !isEmpty{
        items.removeLast()
        }
    }
    
    /**
    function that returns current amount of the elements
     Returns: current amount of the elements
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
        return items[i]
    }
    
    /**
    function that prints Stack
    */
    public func printElements(){
        dump(items)
    }
}
