//
//  ToDoItem.swift
//  MyApp
//
//  Created by Carlos Rojas on 6/6/14.
//  Copyright (c) 2014 Carlos Rojas. All rights reserved.
//

import Foundation

class ToDoItem: NSObject{

    var itemName: NSString = ""
    var completed: Bool = false
    var creationDate: NSDate = NSDate()
    var stock: NSInteger = 0
    var price: NSInteger
    
    init(name:String, stock:NSInteger, price:NSInteger){
        self.itemName = name
        self.stock = stock
        self.price = price
    }
    
    func minusOne(){
        self.stock = self.stock - 1
    }
    

}
