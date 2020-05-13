//
//  main.swift
//  LinkedList
//
//  Created by 袁昊 on 2020/5/11.
//  Copyright © 2020 袁昊. All rights reserved.
//

import Foundation

print("~~~~~~~~~~~~~~LinkedList~~~~~~~~~~~~~~")



var list = LinkedList.init()
list.addWithArr(arr: [0,1,2,3,4,5,6,7])
list.append(eleC: 8)
list.printElements()
list.setEleOfIndex(index: 8, eleC: 88)
list.printElements()
print(list.getEleOfIndex(index: 8)) //88
print(list.removeIndexOf(index: 8)) // true
print(list.removeIndexOf(index: 8)) //false

list.printElements()
let temp = list.indexOfNode(index: 4)
print(temp?.element ?? 0)

for i in 0..<9{
    print(list.getEleOfIndex(index: i))
}


//值所在的位置
print(list.indexOf(eleC: 13)) // -1
print(list.indexOf(eleC: 4)) // 4

//有没有元素
print(list.contains(eleC: 11)) //false
print(list.contains(eleC: 4))  //true

list.clear()
list.printElements()
list.addWithArr(arr: [0,1,2,3,4,5,6,7])
list.insertNode(index: 9, eleC: 12)
list.printElements()






