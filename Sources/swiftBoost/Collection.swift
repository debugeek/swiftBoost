//  
//  Collection.swift
//  swiftBoost
//
//  Created by Xiao Jin on 2020/12/15.
//  Copyright © 2020 debugeek. All rights reserved.
//

import Foundation

public extension Collection {

    func compactMerge() -> [Any] {
        return flatMap { ($0 as? [Any])?.compactMerge() ?? [$0] }
    }

}
