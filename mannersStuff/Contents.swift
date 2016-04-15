//
//  Contents.swift
//  mannersStuff
//
//  Created by Benavidez, Amanda on 4/15/16.
//  Copyright © 2016 Benavidez, Amanda. All rights reserved.
//

import UIKit


struct Contents {
    var name: String
    var imageName: String
    var description: String
    
    func setImage(image:String) ->UIImage
    {
        return UIImage(named: image)!
    }
}