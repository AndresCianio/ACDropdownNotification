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
    
    var title: String
    var subtitle: String
    
    var topButtonTitle: String?
    var bottomButtonTitle: String?
    
    var image: UIImage?
    
    public var backgroundColor = UIColor.whiteColor()
    public var backgroundShouldHaveBlur = true
    
    public var dismissDelay = 2.0      // seconds
    public var shouldDismissOnTap = true
    
    public var titleFont = UIFont(name: "HelveticaNeue-Medium", size: 15.0)!
    public var subtitleFont = UIFont(name: "HelveticaNeue", size: 13.0)!
    public var buttonFont = UIFont(name: "HelveticaNeue-Medium", size: 13.0)!
    
    public var titleFontColor = UIColor.blackColor()
    public var subtitleFontColor = UIColor.blackColor()
    public var buttonFontColor = UIColor.blackColor()
    
    public var buttonCornerRadius = 2.0
    public var buttonBorderColor = UIColor.whiteColor()
    public var buttonBorderWidth = 1.0
    public var buttonBackgroundColor = UIColor.whiteColor()
    
    
    private var notificationView: UIView!
    
    private var titleLabel: UILabel!
    private var subtitleLabel: UILabel!
    private var imageView: UIImageView?
    private var topButton: UIButton?
    private var bottomButton: UIButton?
    
    
    // MARK - Init
    
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
    
    
    // MARK - Present
    
    public func present(inView view: UIView, withGravityAnimation withGravity: Bool)
    {
        setup()
    }
    
    
    // MARK - Private
    
    private func setup()
    {
        notificationView = UIView()
        notificationView.backgroundColor = backgroundColor
        
        titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.font = titleFont
        titleLabel.textColor = titleFontColor
        
        subtitleLabel = UILabel()
        subtitleLabel.text = subtitle
        subtitleLabel.font = subtitleFont
        subtitleLabel.textColor = subtitleFontColor
        subtitleLabel.numberOfLines = 0;
        
        if image != nil {
            imageView = UIImageView()
            imageView!.image = image!
            imageView!.contentMode = .ScaleAspectFit
        }
        
        if topButtonTitle != nil {
            topButton = UIButton(type: .Custom)
            topButton!.setTitle(topButtonTitle!, forState: .Normal)
        }
        
        if bottomButtonTitle != nil {
            bottomButton = UIButton(type: .Custom)
            bottomButton!.setTitle(bottomButtonTitle!, forState: .Normal)
        }
        
        [topButton, bottomButton].forEach { (button) in
            if button != nil {
                button!.titleLabel!.font = buttonFont
                button!.setTitleColor(buttonFontColor, forState: .Normal)
                button!.backgroundColor = self.buttonBackgroundColor
                button!.layer.cornerRadius = CGFloat(self.buttonCornerRadius)
                button!.layer.borderColor = self.buttonBorderColor.CGColor
                button!.layer.borderWidth = CGFloat(self.buttonBorderWidth)
                button!.layer.masksToBounds = true
            }
        }
    }
    
    
    // MARK - Debug
    
    public func description() -> String
    {
        return "[" + title + "] [" + subtitle + "]"
    }
    
}

