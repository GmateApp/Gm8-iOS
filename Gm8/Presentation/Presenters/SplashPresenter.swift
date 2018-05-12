//
//  SplashPresenter.swift
//  Gm8
//
//  Created by Hackintosh on 5/12/18.
//  Copyright © 2018 Hackintosh. All rights reserved.
//

import RxSwift

class SplashPresenter: BasePresenter<SplashView> {
    
    private let router: Router
    
    init(router: Router) {
        self.router = router
        super.init()

        print("Presenter start")
        logIn()
    }
    
    func logIn() {
        let accessToken = "EAAHkLkFqSFwBAHR7tUweuQVFth8vim420Q22ofe8OUPRDnnYLajQm01UOu29pdrykQOMdMZALv2Ac4n6ForLmbMu9kwMC9Xx5mG4MFoWOwJVj80TjePzSZA2OV3WbI1aYMkAj1JQOVeR2eel2bZBBjb7uWSBum9us22pLB1WMhsz10ZA8adfT6ZB3d5U8nZAjTiwKv2XxCIWsxxEZAoZBHlR4i2BgGbbHONSgjO18nIZA7QZDZD"
        let jwtokenRequestApi = JWTokenRequestAPI(data: ProviderDataRequestAPI(token: accessToken), provider: "facebook")
        let apiService = APICommunication()
        let obs: Observable<JWToken> = apiService.getJWToken(request: jwtokenRequestApi)
            .map { it in
                it.toJWToken()
        }
        
        execute(obs, onLogin, onError)
    }
    
    func onLogin(token: JWToken) {
        //router.showAuthenticatedVC(animated: false)
        print(token.token)
    }
    
    func onError(error: Error) {
        print(error.localizedDescription)
    }
}
