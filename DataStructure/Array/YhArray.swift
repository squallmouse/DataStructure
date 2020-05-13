//
//  main.swift
//  Array
//
//  Created by 袁昊 on 2020/5/11.
//  Copyright © 2020 袁昊. All rights reserved.
//

import Foundation

class YhArray{
    var size:Int = 0
    var elements : Array<Any>
    
    init(capacity:Int = 10) {
        elements = Array<Any>(arrayLiteral: capacity)
    }
    
    /// 元素的数量
    /// - Returns: 数量
    func Size() -> Int {
        return 0
    }
    
    
    /// 是否为空
    /// - Returns: 是否为空
    func IsEmpty() -> Bool{
        return false
    }
    
    /// 是否包含某个元素
    func Contains<T>(element:T) -> Bool {
        return false
    }
    /// 添加元素到最后
    func AddLast<T>(element :T)  {
        
    }
    
    /// 返回index位置指定的元素
    func Get<T>(index:Int) -> T {
        return 0 as! T
    }
    
    
    /// 设置index位置的元素
    func Set<T>(index:Int,element:T) -> T {
        return 0 as! T
    }
    
    /// 往index位置添加元素
    func Add<T>(index:Int,element:T)  {
        
    }
    /// 删除index位置对应的元素
    func remove<T>(index:T) -> T {
        return 0 as! T
    }
    
    /// 查看元素的位置
    func indexOf<T>(element:T) -> Int {
        return 0
    }
    
    /// 清楚所有元素
    func clear()  {
        
    }
    
}

