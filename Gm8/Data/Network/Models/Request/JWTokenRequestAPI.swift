//
//  JWTokenRequestAPI.swift
//  Gm8
//
//  Created by Hackintosh on 5/12/18.
//  Copyright © 2018 Hackintosh. All rights reserved.
//

import ObjectMapper

class JWTokenRequestAPI: Mappable {
    
    var data: ProviderDataRequestAPI!
    var provider: String!
    
    init(data: ProviderDataRequestAPI, provider: String) {
        self.data = data
        self.provider = provider
    }
    
    required init?(map: Map) {
        
    }
}
