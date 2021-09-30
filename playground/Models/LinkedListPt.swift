//
//  LinkedListPt.swift
//  playground
//
//  Created by Марія Кухарчук on 19.09.2021.
//

import Foundation

//MARK: generic class for defining node of the List
public class Node<T>{
    /**
     value of the node
    */
    public var val:T
    
    /**
       link on the next node
    */
    public var next:Node?
    
    /**
     class constructor that add element
     Parameter value: data of the Node
    */
  public init(_ value:T){
   self.val = value
   self.next = nil
  }
    
}

//MARK: generic class for defining the List inherited from the protocol with simple functions for DataTypes
public class LinkedList<T>:CanBeChangedData{
    public typealias Element = T
    /**
    head of the list
    */
    private var head:Node<T>?
    /**
    tail of the list
    */
    public var tail:Node<T>?
    /**
    amount of the elements inf the list
    */
    private var count = 0
    /**
    variable for checking is list empty
    */
    private var isListEmpty:Bool {
      return head == nil
    }
    
    /**
     class constructor that add element
     Parameter val: data that we want to add to the list
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
    function that adds new element at the end of the list
    Parameter val: data that we want to add to the list
    */
    public func addElement(_ value:T){//add at tail
      let cur = Node(value)
    
      if head == nil {
         head = cur
         tail = head
      }else{
         tail?.next = cur
         tail = tail?.next
      }
      count+=1
    }
    
    /**
    function that deletes head element
    */
    public func deleteElement(){//delete head node
        if head?.next == nil{
            head=nil
            count = 0
        }
        else{
           head = head?.next
           count -= 1
        }
    }
    
    /**
    function that returns head of the list
     Returns: head data
    */
    public func getHeadNode()->T?{
        return head?.val
    }
    
    /**
    function that returns tail of the list
     Returns: tail data
    */
    public func getTailNode()->T?{
        return tail?.val
    }
    
    /**
    function that prints list
    */
    public func printElements(){
      var node = head
      while node != nil{
       guard let nod = node else{
        return
       }
       print(" \(nod.val) -> ")
       node = node?.next
    }
   }
    
    /**
    function that chacks is list empty
     Returns: empty or not
    */
    public func isEmpty()->Bool{
    return isListEmpty
   
   }
    /**
    function that returns current amount of the nodes
     Returns: current amount of the nodes
    */
    public func getAmount()->Int{
    return count
   }
}
