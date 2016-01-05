//
//  SwiftMath.swift
//  TSwiftDemo
//
//  Created by PangChao on 16/1/5.
//  Copyright © 2016年 PangChao. All rights reserved.
//

import Foundation

class SwiftMath:NSObject {
    var name:String?
    init(name:String) {
        self.name = name;
    }
    
    func sum(num1:Int,num2:Int)->Int{
        return num1 + num2;
    }
    
    func multuplay(num1:Int,num2:Int)->Int{
        return num1 * num2;
    }
}