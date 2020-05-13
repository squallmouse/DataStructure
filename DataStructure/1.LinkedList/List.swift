//
//  List.swift
//  LinkedList
//
//  Created by 袁昊 on 2020/5/11.
//  Copyright © 2020 袁昊. All rights reserved.
//

import Foundation

class Node {
    var element : Int
    var next:Node?
    //
    init(ele : Int,nex : Node?) {
        self.element = ele
        self.next = nex
    }
}

class LinkedList{
    var size:Int = 0
    var headNode:Node?
    var tailNode:Node? = nil
  // MARK:function
    init() {
        self.size = 0
        self.headNode = nil
    }
    
    /// 判断是否为空
    /// - Returns: 空返回true
    func isEmpty() -> Bool {
        return self.size == 0
    }
    
    /// 查找元素在第几位
    /// - Parameter eleC: 查找的内容
    /// - Returns: 没有返回-1
    func indexOf(eleC:Int) -> Int {
        var count = 0
        var tempNode = self.headNode
        while let tempEle = tempNode {
            if tempEle.element == eleC {
                return count
            }
            count += 1
            tempNode = tempEle.next
        }
        return -1
    }
    
    
    /// 是否存在元素
    /// - Parameter ele: 查找的内容
    /// - Returns: 有就返回true
    func contains(eleC:Int) -> Bool {
        return self.indexOf(eleC: eleC) > -1
    }
    
    
    /// 清空链表
    func clear()  {
        self.size = 0
        self.headNode = nil
    }
    
    
    /// 把元素插入第几位
    /// - Parameters:
    ///   - index: 第几位
    ///   - ele: node
    func insertNode(index:Int,eleC:Int)  {
        if index > self.size {
            print("insertNode index 超出范围")
            return
        }
        var preNode : Node?

        var nextNode : Node?

        let node = Node.init(ele: eleC, nex: nil)
        if index == 0 {
            //插入到第一个
            
            node.next = self.headNode
            self.headNode = node
        }else{
            preNode = self.indexOfNode(index: index-1)
            nextNode = preNode?.next
            node.next = nextNode
            preNode?.next = node
        }
        self.size += 1
        
    }

    
    /// 查找指定位数的元素
    /// - Parameter index: 位数
    /// - Returns: node
     func indexOfNode(index:Int) -> Node?{
        if self.size <= index  {
            print("indexOfNode index 超出范围")
            return nil
        }
        var tempNode :Node? = self.headNode
        
        for _ in 0..<index {
            tempNode = tempNode?.next
        }
        return tempNode
    }
    
    /// 添加node到最末尾
    /// - Parameter node: 元素
    func append(eleC:Int)  {
        let node = Node.init(ele: eleC, nex: nil)
        if self.size == 0 {
            self.headNode = node
        }else{
            let lastNode = self.indexOfNode(index: self.size-1)
            lastNode?.next = node
        }
        self.size += 1
    }
    
    
    /// 依次添加数组里的元素到最末尾
    /// - Parameter arr: 数组
    func addWithArr(arr:[Int])  {
        for i in 0..<arr.count {
            self.append(eleC: arr[i])
        }
    }
    
    
    /// 获取制定位置的元素值
    /// - Parameter index: index
    /// - Returns: 值 超出范围返回-1
    func getEleOfIndex(index:Int) -> Int {
        if index >= self.size {
            
            return -1
        }
        return self.indexOfNode(index: index)!.element
    }
    
    
    /// 设置某个元素的值
    /// - Parameters:
    ///   - index: index
    ///   - eleC: 值
    func setEleOfIndex(index:Int , eleC:Int)  {
        if index >= self.size {
            return
        }
        self.indexOfNode(index: index)!.element = eleC
    }
    
    
    /// 删除第几个元素
    /// - Parameter index: index
    /// - Returns: 是否删除成功
    func removeIndexOf(index:Int) -> Bool {
        if index >= self.size {
            return false
        }else{
            let preNode = self.indexOfNode(index: index-1)
            let midNode = preNode?.next
            let backNode = midNode?.next
            preNode?.next = backNode
            self.size -= 1
            return true
        }
    }
    
    
    /// 打印所有的元素值
    func printElements()  {
        var arr : [Int] = []
        if self.size == 0 {
            print("list 没有元素")
        }else{
            var node = self.headNode
            for _ in 0..<self.size {
                arr.append(Int(node!.element))
                node = node?.next
            }
         print(arr)
        }
    }
    
}






