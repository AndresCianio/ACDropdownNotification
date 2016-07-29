//
//  ACDropdownNotification.swift
//  Pods
//
//  Created by Andres Ciaño on 29/7/16.
//
//

import UIKit

public class ACDropdownNotification
{
    
    public var title: String
    public var subtitle: String
    
    var topButtonTitle: String?
    var bottomButtonTitle: String?
    
    var image: UIImage?
    
    var backgroundColor = UIColor.lightGrayColor()
    var backgroundShouldHaveBlur = true
    
    var dismissDelay = 2.0      // seconds
    var shouldDismissOnTap = true
    
    public init(title: String, subtitle: String)
    {
        self.title = title
        self.subtitle = subtitle
    }
    
    public convenience init(title: String, subtitle: String,
                            image: UIImage,
                            topButtonTitle: String? = nil, bottomButtonTitle: String? = nil)
    {
        self.init(title: title, subtitle: subtitle)
        self.image = image
        self.topButtonTitle = topButtonTitle
        self.bottomButtonTitle = bottomButtonTitle
    }
    
}

