//
//  ViewController.swift
//  mannersStuff
//
//  Created by Benavidez, Amanda on 4/15/16.
//  Copyright © 2016 Benavidez, Amanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var infoTable: UITableView!
    
    let content: [Contents] = [
        Contents(name: "What is the Force", imageName: "force", description: ""),
        Contents(name: "What is the Force", imageName: "force", description: ""),
        Contents(name: "What is the Force", imageName: "force", description: ""),
        Contents(name: "What is the Force", imageName: "force", description: ""),
        Contents(name: "What is the Force", imageName: "force", description: ""),
        Contents(name: "What is the Force", imageName: "force", description: ""),
        Contents(name: "What is the Force", imageName: "force", description: ""),
        Contents(name: "What is the Force", imageName: "force", description: ""),
        Contents(name: "What is the Force", imageName: "force", description: "")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.infoTable.delegate = self
        self.infoTable.dataSource = self
          }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.content.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let  cellInfo = self.content[indexPath.row]
        
        let myCell = UITableViewCell()
        myCell.textLabel!.text = cellInfo.name
        
        return myCell
    }
    
     func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
        let navVC = self.storyboard!.instantiateViewControllerWithIdentifier("nav_controller") as! UINavigationController
        
        let detailVC = navVC.viewControllers[0] as! ContentController
        detailVC.content = self.content[indexPath.row]
        
        self.presentViewController(navVC, animated: true, completion: nil)
    }
}

