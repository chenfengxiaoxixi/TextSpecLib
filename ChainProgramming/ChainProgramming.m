//
//  ChainProgramming.m
//  SpecLibDemo
//
//  Created by chenfeng on 2018/8/21.
//  Copyright © 2018年 chenfeng. All rights reserved.
//

#import "ChainProgramming.h"

@implementation ChainProgramming

- (ChainProgramming *(^)(NSString *))work
{
    return ^(NSString *name)
    {
        NSLog(@"%@",name);
        return self;
    };
        
}

- (ChainProgramming *(^)(NSString *))sleep
{
    return ^(NSString *name)
    {
        NSLog(@"%@",name);
        return self;
    };
}
    
@end
