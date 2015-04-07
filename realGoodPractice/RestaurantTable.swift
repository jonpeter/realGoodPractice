//
//  RestaurantTable.swift
//  realGoodPractice
//
//  Created by Jonathan Gardocki on 4/6/15.
//  Copyright (c) 2015 Jonathan Gardocki. All rights reserved.
//

import UIKit

class RestaurantTable: UITableViewController {


    var restaurant: RestaurantModel?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
           }

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
              return 5
    }

    
    
    override func viewDidAppear(animated: Bool) {
        print(restaurant)
    }
    
  }
