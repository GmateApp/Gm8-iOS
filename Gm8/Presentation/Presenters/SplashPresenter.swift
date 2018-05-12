//
//  SplashPresenter.swift
//  Gm8
//
//  Created by Hackintosh on 5/12/18.
//  Copyright © 2018 Hackintosh. All rights reserved.
//


class SplashPresenter: BasePresenter<SplashView> {
    
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func logIn() {
    }
    
    func onLogin() {
    }
    
    func onError(error: Error) {
    }
}
