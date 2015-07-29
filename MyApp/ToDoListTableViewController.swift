//
//  TableViewController.swift
//  MyApp
//
//  Created by Carlos Rojas on 6/6/14.
//  Copyright (c) 2014 Carlos Rojas. All rights reserved.
//

import UIKit



@objc(ToDoListTableViewController) class ToDoListTableViewController: UITableViewController {

    @IBAction func unwindToList(segue:UIStoryboardSegue){
        var source: AddToDoViewController = segue.sourceViewController as! AddToDoViewController
        if var item: ToDoItem = source.toDoItem{
            self.toDoItems.addObject(item)
            self.tableView.reloadData()
        }
        
    }
    
    var toDoItems: NSMutableArray = []
    var cart: NSMutableArray = []
   
    
    override func viewDidLoad(){
        super.viewDidLoad()
        loadInitialData()
    }
    
    func loadInitialData(){
        var item1 = ToDoItem(name:"Product 1", stock:10, price:10)
        self.toDoItems.addObject(item1)
        var item2 = ToDoItem(name: "Product 2", stock:8, price:80)
        self.toDoItems.addObject(item2)
        var item3 = ToDoItem(name: "Product 3", stock:7, price:70)
        self.toDoItems.addObject(item3)
        var item4 = ToDoItem(name: "Product 4", stock:8, price:80)
        self.toDoItems.addObject(item4)
        var item5 = ToDoItem(name: "Product 5", stock:7, price:70)
        self.toDoItems.addObject(item5)
        var item6 = ToDoItem(name:"Product 6", stock:10, price:10)
        self.toDoItems.addObject(item6)
        var item7 = ToDoItem(name: "Product 7", stock:8, price:80)
        self.toDoItems.addObject(item7)
        var item8 = ToDoItem(name: "Product 8", stock:7, price:70)
        self.toDoItems.addObject(item8)
        var item9 = ToDoItem(name: "Product 9", stock:8, price:80)
        self.toDoItems.addObject(item9)
        var item10 = ToDoItem(name: "Product 10", stock:7, price:70)
        self.toDoItems.addObject(item10)
        var item11 = ToDoItem(name:"Product 11", stock:10, price:10)
        self.toDoItems.addObject(item11)
        var item12 = ToDoItem(name: "Product 12", stock:8, price:80)
        self.toDoItems.addObject(item12)
        var item13 = ToDoItem(name: "Product 13", stock:7, price:70)
        self.toDoItems.addObject(item13)
        var item14 = ToDoItem(name: "Product 14", stock:8, price:80)
        self.toDoItems.addObject(item14)
        var item15 = ToDoItem(name: "Product 15", stock:7, price:70)
        self.toDoItems.addObject(item15)
        var item16 = ToDoItem(name:"Product 16", stock:10, price:10)
        self.toDoItems.addObject(item16)
        var item17 = ToDoItem(name: "Product 17", stock:8, price:80)
        self.toDoItems.addObject(item17)
        var item18 = ToDoItem(name: "Product 18", stock:7, price:70)
        self.toDoItems.addObject(item18)
        var item19 = ToDoItem(name: "Product 19", stock:8, price:80)
        self.toDoItems.addObject(item19)
        var item20 = ToDoItem(name: "Product 20", stock:7, price:70)
        self.toDoItems.addObject(item20)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.toDoItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let CellIndentifier: NSString = "ListPrototypeCell"
        
        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIndentifier as String) as! UITableViewCell
        
        var todoitem: ToDoItem = self.toDoItems.objectAtIndex(indexPath.row) as! ToDoItem
        
        // format the item
        var tmpText = todoitem.itemName as String + " $ " + String(todoitem.price)
        tmpText += " - " + String(todoitem.stock) + " Units (Buy!!!)"
        cell.textLabel?.text = tmpText

            
        /*
        
        var label: UILabel = UILabel()
        label.textAlignment = NSTextAlignment.Right
        label.textAlignment = .Right
        label.text = "Buy"
        
        label.textColor = UIColor.redColor()
        label.shadowColor = UIColor.blackColor()
        label.font = UIFont(name: "HelveticaNeue", size: CGFloat(22))
        
        cell.addSubview(label)
        */
        


        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        var tappedItem: ToDoItem = self.toDoItems.objectAtIndex(indexPath.row) as! ToDoItem
    
        
        var itemCart = ToDoItem(name:tappedItem.itemName as String, stock:1, price:tappedItem.price)
        self.cart.addObject(itemCart)
        tappedItem.minusOne()
        
        println("Item agregado al carro");
        
        println("Compra total" + "500");
        
        
        
        if(tappedItem.stock == 0){
            self.toDoItems.removeObjectAtIndex(indexPath.row)
        }
        tableView.reloadData()
        
    }
    

    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            self.toDoItems.removeObjectAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
}









