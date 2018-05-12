//
//  ViewController.swift
//  Gm8
//
//  Created by Hackintosh on 5/11/18.
//  Copyright © 2018 Hackintosh. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController, SplashView {
    
    var presenter: SplashPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func setPresenter() {
        presenter = SplashPresenter(router: Router(viewController: self))
        presenter.view = self
    }
    
}

