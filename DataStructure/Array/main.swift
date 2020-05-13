//
//  main.swift
//  Array
//
//  Created by 袁昊 on 2020/5/11.
//  Copyright © 2020 袁昊. All rights reserved.
//

import Foundation

//var pint:UnsafeRawPointer?
//var pint:UnsafeMutableRawPointer?
var pint:UnsafeMutablePointer<Any>?

struct NODE {
    var name : Int
    var point : UnsafeMutableRawPointer?
//    var ppnode :NODE
    mutating func setPoint(pointer : UnsafeMutableRawPointer?)  {
        self.point = pointer
    }
}

print("123")
func testss<T>(p:UnsafeMutablePointer<T>){
    print(p)
}
var a = 1

var b = 2

//pint?.pointee = a
//print(pint as Any)
//pint = UnsafeMutablePointer.;
//pint.pointee = 0

//var null = 0
//null = nil
//var name3 = NODE(name: 20, point: nil)
var name2 = NODE(name: 20, point: nil)

var name3 = NODE(name: 20, point: nil)


print(name2.point as Any)
name2.setPoint(pointer: &name3)
print(name2.point as Any)

//withUnsafePointer(to: &name3) { pointer in
//    print(pointer)
//}


