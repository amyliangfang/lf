//
//  Girl.m
//  c-01
//
//  Created by 梁芳 on 15/7/9.
//  Copyright (c) 2015年 梁芳. All rights reserved.
//

#import "Girl.h"

@implementation Girl


- (void) test1{
    age = 100;
    NSLog(@"打印父类的实例变量:%d,属性变量_age好像不能访问，貌似属性没有被继承",age);
}
- (void) setAge123:(int)a1{
    age = 600;
}

- (id) initWithAge:(int)a1 Identify:(int) a2{
    if (self = [super init]) {
        age = 100;
        identify = 400;
        self.age =200;
    }
    return self;
}

- (void) mytest2
{
    NSLog(@"协议方法的实现");
 }

-(NSString *) find{
    if (_price > 6000) {
        return @"房子太贵了";
    }else if (_price > 5000){
        return @"价格还可以接受，但是还是有点贵";
    }else if (_price > 4000){
        return @"可以接受";
    }
        
    return @"没有找到房子";
    
}

@end


