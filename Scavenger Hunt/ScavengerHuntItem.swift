//
//  ScavengerHuntItem.swift
//  Scavenger Hunt
//
//  Created by David Richardson on 11/12/15.
//  Copyright © 2015 David Richardson. All rights reserved.
//

import UIKit

class ScavengerHuntItem: NSObject, NSCoding {
    
    let name: String;
    var photo: UIImage?;
    var isCompleted: Bool{
        get {
            return photo != nil;
        }
    }
    
    let nameKey = "name"
    let photoKey = "photo"
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey: nameKey);
        
        if let thePhoto = photo {
            aCoder.encodeObject(thePhoto, forKey: photoKey);
        }
    }
    
    // required that you implement a new init method for new subclass
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObjectForKey(nameKey) as! String
        photo = aDecoder.decodeObjectForKey(photoKey) as? UIImage
    }
    
    init(name: String) {
        self.name = name
    }
    
}