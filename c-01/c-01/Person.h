//
//  Person.h
//  c-01
//
//  Created by 梁芳 on 15/7/9.
//  Copyright (c) 2015年 梁芳. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LookForApartment.h"

@interface Person : NSObject
{
    //申明的成员变量
    int identify;
    int age;  //   如果这个变量名与property某个属性的变量名同名了，注意，在设置它的get和set方法时，与property自动生成的get和set方法区分开，否则就混淆在一起了，测试了一下如果一样，会优先调用property属性的方法，获取相关值。
    
    
}
//申明的属性,property主要完成三件事情，自动生成get和set方法以及生成对应的_age变量，与同名的实例变量做区分
@property(nonatomic) int age ;
@property(nonatomic,weak) id<LookForApartment> delegate;
@property(nonatomic,retain) NSString *name;

//申明的方法,
- (id) initWithAge:(int)a1 Identify:(int) a2;
- (int) getAge;
- (int) getIdentify;
- (void) setAge123:(int)a1;
+ (Person *) sharePerson;
+ (Person *) personWithAge:(int)age Identify:(int)identify;

- (NSString *)findHouse;

@end



@interface Person (eat)

- (void) test2;
@end
