//
//  JWTokenMapper.swift
//  Gm8
//
//  Created by Hackintosh on 5/12/18.
//  Copyright © 2018 Hackintosh. All rights reserved.
//

import ObjectMapper

extension JWTokenRequestAPI{
    func mapping(map: Map) {
        data <- map["data"]
        provider <- map["provider"]
    }
}

extension ProviderDataRequestAPI{
    func mapping(map: Map) {
        token <- map["token"]
    }
}

extension JWTokenResponseAPI {
    func mapping(map: Map) {
        token <- map["token"]
    }
    
    func toJWToken() -> JWToken {
        return JWToken(token: token)
    }
}
