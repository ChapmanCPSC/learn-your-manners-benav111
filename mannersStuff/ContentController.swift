//
//  ContentController.swift
//  mannersStuff
//
//  Created by Benavidez, Amanda on 4/15/16.
//  Copyright © 2016 Benavidez, Amanda. All rights reserved.
//

import UIKit

class ContentController: UIViewController {
    
    var content: Contents!
    
    @IBOutlet weak var nameLabel: UILabel!
    

    @IBOutlet weak var contentDescription: UITextView!
    
    @IBOutlet weak var contentImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = content.name
        contentImage.image = UIImage(named: "cat")
        contentDescription.text =  content.description
    }
    
    @IBAction func backPressed(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}