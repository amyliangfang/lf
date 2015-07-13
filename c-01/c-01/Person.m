//
//  Person.m
//  c-01
//
//  Created by 梁芳 on 15/7/9.
//  Copyright (c) 2015年 梁芳. All rights reserved.
//

#import "Person.h"

@interface Person ()

-(void)test2345;

@end





@implementation Person

static int globalVar = 300; //静态全局变量存放在堆中

- (id) initWithAge:(int)a1 Identify:(int)a2{
    if (self = [super init]) {
        age = a1;
        _age = a2;
        identify = a2;
    }
    return self;
}
- (int) getAge{
    return age;
    
}
- (int) getIdentify{
    return identify;
    
}
- (void) setAge123:(int)a1{
    age = a1;
    
}
//感觉这里不知道怎么做内存管理比较好
+ (Person *) sharePerson{
    int  nativeVar= 10; //局部变量存放在栈中
    Person *p = [[Person alloc] init];
    [p setAge123:nativeVar]; //  我理解的点语法应该要在创建一个类的对象后使用的，这里为什么还是不可以，而property定义的属性则可以
    p.age = globalVar;
    return p;
    
    
}
+ (Person *) personWithAge:(int)age Identify:(int)identify{
    Person *p = [[Person alloc] init];
    [p setAge:age];
    return p;
}


- (void) test2345{
    NSLog(@"test2345566");
}

-(NSString *)findHouse{
    return _delegate.find;
    
}


@end


@implementation Person (eat)
- (void)test2{
    NSLog(@"TEST22222");
}

@end



