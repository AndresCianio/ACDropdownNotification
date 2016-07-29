//
//  ViewController.swift
//  ACDropdownNotification
//
//  Created by Andres Ciaño on 07/29/2016.
//  Copyright (c) 2016 Andres Ciaño. All rights reserved.
//

import UIKit
import ACDropdownNotification

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let n = ACDropdownNotification(title: "Da Taitel", subtitle: "Such subtitle. Much Wow. Subtitle for the win.")
        print("/////")
        print(n.title)
        print("/////")
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

