//
//  APICommunication.swift
//  Gm8
//
//  Created by Hackintosh on 5/12/18.
//  Copyright © 2018 Hackintosh. All rights reserved.
//

import Alamofire
import RxSwift

class APICommunication: APIService {
    
    private let requestExecutor: RequestExecutor
    private let keyChain: KeyChain
    
    init() {
        requestExecutor = RequestExecutor()
        keyChain = KeyChain()
    }
    
    func getJWToken(request: JWTokenRequestAPI) -> Observable<JWTokenResponseAPI> {
        return requestExecutor.execute(to: "https://69b85b0d.ngrok.io/api/authentication", with: request.toJSON(), method: .post)
    }
    
    //func getUsers() -> 
    
    func getRequestHeader() -> HTTPHeaders {
        return ["Authorization": "Bearer " + keyChain.getAccesToken()]
    }
    
}
