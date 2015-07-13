//
//  main.m
//  c-01
//
//  Created by 梁芳 on 15/7/8.
//  Copyright (c) 2015年 梁芳. All rights reserved.
//
#import "Person.h"
#import "Girl.h"
#import "Person+Work.h"
#import <Foundation/Foundation.h>
#define  PI 3.1415926 //不带参数的红定义
#define cpmpare(a,b) ((a)>(b)?(a):(b)) //带参数的宏定义
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        char a,b;
//        a = 'x';
//        b = 'y';
//        printf("字符a的值为：%c,字符b的值为：%c\n",a,b);
//        Person *p = [[Person alloc] initWithAge:20 Identify:203];
//        NSLog(@"zhegeren de age:%i identify:%i",[p getAge],[p getIdentify]);
//        
//        [p setAge:100];
//        NSLog(@"zhegeren de  age:%i _age:%i",[p getAge],p.age);
//        
        Person *p2 = [Person sharePerson];
        NSLog(@"zhegeren de age:%i _age:%i",[p2 getAge],p2.age);
        
        Girl *g1 = [[Girl alloc] initWithAge:100 Identify:200];
        //[g1 setAge123:400];
        NSLog(@"zhegeren de age:%i _age:%i",[g1 getAge],g1.age);
//        g1.test;
//        g1.test2;
        //[g1 test1];
        g1.price = 4500;
        p2.delegate = g1;
        NSLog(@"--------查看是否找到房子:%@",p2.findHouse);
        
        
        
        //数字对象初始化
        int test1 = 10;
        NSNumber *num1 = [NSNumber numberWithInt:test1];
        BOOL test2 = false;
        NSNumber *num2 = [NSNumber numberWithBool:test2];
        float p1 = 3.14;
        NSNumber *num3 = [[NSNumber alloc] initWithFloat:p1];
        char test4 = 'q';
        NSNumber *num4 = [[NSNumber alloc] initWithChar:test4];
        
        
        // 数字对象还原基本数据类型
        int t1 = [num1 intValue];
        BOOL b1 = [num2 boolValue];
        float f1 = [num3 floatValue];
        char c1 = [num4 charValue];
        
        //oc中创建字符串对象的方法
        NSString *string1 = @"112这个一个字符串常量对象";
        NSString *string2 = [[NSString alloc] init];//创建一个空字符串
        NSString *string3 = [NSString string];//同样是创建一个新字符串
        //NSString *string4 = [[NSString alloc] initWithString:@"nih"];
        //NSString *string5 = [NSString stringWithString:@"eer"];
        //格式化字符串的初始化方法
        int number = 2;
        NSString *string = [[NSString alloc] initWithFormat:@"%d",number];
        float f12 = 2.34;
        NSString *string12 = [NSString stringWithFormat:@"%f",f12];
        NSString *string34 = @"112这个一个字符串常量对象";
        NSString *string56 = [[NSString alloc] initWithFormat:@"%d这个一个字符串常量对象",112];
        //比较字符串内容是否相等
        if ([string1 isEqualToString:string34]) {
            NSLog(@"两个字符串相等");
            
        }
        //测试字符串是否是同一个对象，如果定义的两个字符串常量内容相等，则是同一个对象
        if (string1 == string34) {
            NSLog(@"两个字符串是同一个对象");
            NSLog(@"string56:%@",string56);
        }
        if (string1 == string56) {
            NSLog(@"两个字符串是同一个对象");
        }
        //比较字符串大小
        NSLog(@"比较大小的结果：%ld",[string1 caseInsensitiveCompare:string56]);
        //注意将nsuinteger与nsnumber区分开，这里是一个typedef的类型，所以不用加＊，否则其实从警告的错误可以看出，提到了指针
        NSUInteger length = [string length];
        NSLog(@"string1的长度：%lu",length);
        //改变字符串大小写的方法
        NSString *h1 = [@"niddjd" uppercaseString];
        NSString *h2 = [@"niddjd" lowercaseString];
        NSString *h3 = [@"wwwe" capitalizedString];
        NSLog(@"h1:%@,h2:%@,h3:%@",h1,h2,h3);
        
        //将字符串转化为基本数据类型 与 将数值对象转化为基本数据类型是类似的
        
        //截取字符串对象
        //将字符串转换为数组
        NSString *string111 = @"one two three four";
        NSArray *array = [string111 componentsSeparatedByString:@" "];
        //字符串截取
        //从字符串开始截取到指定位置，但不包括该位置字符
        NSLog(@"截取的字符:%@",[string111 substringToIndex:2]);
        //从指定位置开始之后的全部字符，包括指定位置字符
        NSLog(@"截取的字符为:%@",[string111 substringFromIndex:2]);
        
    
        
        // 根据范围截取字符(nsrange),拼接字符串stringbyappending，查询字符串rangeofstring
        
        //可变字符串nsmutablestring的插入删除和替换方法
        
        //不可变数组的初始化,还有arraywitharray，arraywithfcontentsofile
        NSArray *first = [NSArray arrayWithObject:@"111"];
        NSArray *second = [NSArray arrayWithObjects:@"322",@"2234", nil];
        
        for(id string in second){
            //NSLog(@"second is : %@",string);
        }
        
        int (^myBlock)(NSString *) = ^(NSString *string){
            return [string intValue];
        };
        NSLog(@"调用block返回的结果:%d",myBlock(@"1234"));
        
    }
    
    
    //NSLog(@"hello word:%d",argc);
   
    return 0;
 }