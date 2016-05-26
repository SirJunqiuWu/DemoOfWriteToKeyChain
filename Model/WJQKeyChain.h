//
//  WJQKeyChain.h
//  DemoOfKeychain
//
//  Created by 吴 吴 on 16/5/26.
//  Copyright © 2016年 JackWu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WJQKeyChain : NSObject

+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)delete:(NSString *)service;

@end
