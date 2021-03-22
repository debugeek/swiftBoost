//  
//  String.swift
//  swiftBoost
//
//  Created by Xiao Jin on 2021/3/22.
//  Copyright © 2021 debugeek. All rights reserved.
//

import Foundation
import CryptoKit

public extension String {

    var md5: String {
        get {
            let digest = Insecure.MD5.hash(data: self.data(using: .utf8) ?? Data())
            return digest.map {
                String(format: "%02hhx", $0)
            }.joined()
        }
    }

}
