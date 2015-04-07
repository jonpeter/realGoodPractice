//
//  TypeTable.swift
//  realGoodPractice
//
//  Created by Jonathan Gardocki on 4/6/15.
//  Copyright (c) 2015 Jonathan Gardocki. All rights reserved.
//

import UIKit

class TypeTable: UITableViewController {
    
    var types = ["American", "Burgers", "Deli", "Ethnic", "Italian", "Mexican", "Seafood", "Steakhouse"]
    
    var restaurantsArray:[RestaurantModel] = []
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let twotwenty = RestaurantModel(name: "220 Merrill", type: "American")
        let bistrojoe = RestaurantModel(name: "Bistro Joe's", type: "American")
        let dick = RestaurantModel(name: "Dick O' Dows", type: "Burgers")
        let rojo = RestaurantModel(name: "Roho Mexican Bistro", type: "Mexican")
        let Qdoba = RestaurantModel(name: "Qdoba", type: "Mexican")
        let cosi = RestaurantModel(name: "Cosi", type: "Deli")
        let leo = RestaurantModel(name: "Leos Coney Island", type: "Ethnic")
        let hut = RestaurantModel(name: "Pizza Hut", type: "Italian")
        let mitchell = RestaurantModel(name: "Mitchell's Seafood", type: "Seafood")
        let cameron = RestaurantModel(name: "Cameron's Steakhouse", type: "Steakhouse")
        
        var restaurantsArray = [[twotwenty, bistrojoe],[dick],[cosi],[leo],[hut],[rojo, Qdoba], [mitchell], [cameron]]

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "segueone")
        {
            let index = self.tableView!.indexPathForCell(sender as UITableViewCell)
            if let nextrestaurant = index
            {
              var restaurantVC = (segue.destinationViewController as RestaurantTable)
                restaurantVC.restaurant = restaurantsArray[nextrestaurant.row]
            }
            
        }
        
    }
    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return types.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let type = types[indexPath.row]
        var cell = tableView.dequeueReusableCellWithIdentifier("typecell") as typecell
        cell.typelabel.text = type
        return cell
    }
    
}
