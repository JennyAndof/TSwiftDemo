//
//  MathSum.m
//  TSwiftDemo
//
//  Created by PangChao on 16/1/5.
//  Copyright © 2016年 PangChao. All rights reserved.
//

#import "MathSum.h"
#import "TSwiftDemo-Swift.h"
@implementation MathSum

-(NSInteger)sum:(NSInteger)num1 number2:(NSInteger)num2{
    return num1 + num2;
}

//oc调用swift
-(NSInteger)multiplay:(NSInteger)num1 number2:(NSInteger)num2{
    SwiftMath *math = [[SwiftMath alloc]init];
    return [math multuplay:num1 num2:(num2)];
}
@end
