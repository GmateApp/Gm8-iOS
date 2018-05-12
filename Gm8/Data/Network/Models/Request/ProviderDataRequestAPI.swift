//
//  ProviderDataRequestAPI.swift
//  Gm8
//
//  Created by Hackintosh on 5/12/18.
//  Copyright © 2018 Hackintosh. All rights reserved.
//

import ObjectMapper

class ProviderDataRequestAPI: Mappable {
    
    var token: String!
    
    init(token: String) {
        self.token = token
    }
    
    required init?(map: Map) {
        
    }
}

