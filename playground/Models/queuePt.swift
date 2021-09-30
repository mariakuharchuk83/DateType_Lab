//
//  queuePt.swift
//  playground
//
//  Created by Марія Кухарчук on 21.09.2021.
//

import Foundation


//MARK: generic class for defining the Queue inherited from the protocol with simple functions for DataTypes
public class Queue<T>:CanBeChangedData{
   public  typealias Element = T
    
    /*---If we use array, for insertion it takes O(N) space and for removing an element it takes O(N) Space, as we have to add and remove elements at the beginning. If we use LinkedList we just have to remove head node and add to the tail which take O(1) space for both operations.---*/
    /**
     varieble of type LinkedList to defining Queue
    */
   private var list = LinkedList<T>()
    
    /**
     class constructor that add element
     Parameter val: data that we want to add to the Queue
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
    function that adds new element to the Queue (at the end)
    Parameter val: data that we want to add to the Queue
    */
    public func addElement(_ value:T){
     list.addElement(value)
   }
    
    /**
    function that deletes element from the Queue (last)
    */
    public func deleteElement(){
     list.deleteElement()
   }
    
    /**
    function that returns first element
     Return:  head node
    */
    public func peek()->T?{
     guard let node = list.getHeadNode()
     else {
        return nil
     }
    return node
   }
    
    /**
    function that returns last element
     Return:  tail node
    */
    public func peekTail()->T?{
        guard let node = list.getTailNode()
        else {
           return nil
        }
       return node
    }
    
    /**
    function that returns current amount of the elements
     Returns: current amount of the elements
    */
    public func getAmount()->Int{
     return list.getAmount()
   }
    
    /**
    function that prints Queue
    */
    public func printElements(){
     list.printElements()
   }
}


