//
//  Girl.h
//  c-01
//
//  Created by 梁芳 on 15/7/9.
//  Copyright (c) 2015年 梁芳. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"  // 在.h文件中如果是继承某个类，一定要用import

#import "HelloProtocol.h"
@interface Girl : Person <HelloProtocol,LookForApartment>
//如何正确理解继承父类的实例变量和方法(对应property属性的访问一定要用self.age)，即想象成将父类的h和m文件直接拷贝到子类了。父类在main里面使用的方法和属性对girl子类同样适用。并且可以像父类一样在m文件中使用这些变量和方法

@property(nonatomic)int price;
- (void) test1;
- (void) setAge123:(int)a1;
- (id) initWithAge:(int)a1 Identify:(int) a2;


@end
