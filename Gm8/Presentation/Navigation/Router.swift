//
//  Router.swift
//  Gm8
//
//  Created by Hackintosh on 5/12/18.
//  Copyright © 2018 Hackintosh. All rights reserved.
//

import UIKit

class Router {
    
    private let viewController: UIViewController
    private let mainStoryboard: UIStoryboard
    
    init(viewController: UIViewController) {
        self.viewController = viewController
        mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    }

}
