//  
//  Collection.swift
//  swiftBoost
//
//  Created by Xiao Jin on 2020/12/15.
//  Copyright © 2020 debugeek. All rights reserved.
//

import Foundation

extension Collection {

    func joined() -> [Any] {
        return flatMap { ($0 as? [Any])?.joined() ?? [$0] }
    }
    
    func flatMapped<T>(with type: T.Type? = nil) -> [T] {
        return joined().compactMap { $0 as? T }
    }

}
