//
//  Event.swift
//  ManagementEvents

//  Created by Phan Thi Ngoc Cam on 5/6/17.
//  Copyright © 2017 Phan Thi Ngoc Cam. All rights reserved.
//


import Foundation
import UIKit

class Event
{
    // tao bien ten su kien
    var title: String
    //tao bien chi tiet su kien
    var description: String
    var image: UIImage
    
    //1 su kien gom co: ten su kien va chi tiet su kien
    init(titled: String, description: String, image: UIImage)
    {
        self.title = titled
        self.description = description
        self.image = image
    }
}
