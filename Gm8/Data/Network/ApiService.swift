//
//  ApiService.swift
//  Gm8
//
//  Created by Hackintosh on 5/12/18.
//  Copyright © 2018 Hackintosh. All rights reserved.
//

import Alamofire
import RxSwift
import ObjectMapper

protocol APIService {
    func getJWToken(request: JWTokenRequestAPI) -> Observable<JWTokenResponseAPI>
}
