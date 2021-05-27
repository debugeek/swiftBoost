//  
//  Pointer.swift
//  swiftBoost
//
//  Created by Xiao Jin on 2020/6/2.
//  Copyright © 2020 debugeek. All rights reserved.
//

public extension UnsafePointer {
    
    var raw: UnsafeRawPointer {
        return UnsafeRawPointer(self)
    }
    
    var mutable: UnsafeMutablePointer<Pointee> {
        return UnsafeMutablePointer<Pointee>(mutating: self)
    }
    
    func buffer(n: Int) -> UnsafeBufferPointer<Pointee> {
        return UnsafeBufferPointer(start: self, count: n)
    }
    
}

public extension UnsafePointer where Pointee: Equatable {
    
    func advance(to value: Pointee) -> UnsafePointer<Pointee> {
        var pointer = self
        while pointer.pointee != value {
            pointer = pointer.advanced(by: 1)
        }
        return pointer
    }
    
}

public extension UnsafeMutablePointer {
    
    var raw: UnsafeMutableRawPointer {
        return UnsafeMutableRawPointer(self)
    }
    
    func buffer(n: Int) -> UnsafeMutableBufferPointer<Pointee> {
        return UnsafeMutableBufferPointer(start: self, count: n)
    }
    
    func advanced(by n: Int, wordSize: Int) -> UnsafeMutableRawPointer {
        return self.raw.advanced(by: n*wordSize)
    }
    
}
