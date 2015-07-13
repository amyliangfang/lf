//
//  HelloProtocol.h
//  c-01
//
//  Created by 梁芳 on 15/7/9.
//  Copyright (c) 2015年 梁芳. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HelloProtocol <NSObject>
@optional
- (void) myprotocol;
@required
- (void) mytest2;
@end
