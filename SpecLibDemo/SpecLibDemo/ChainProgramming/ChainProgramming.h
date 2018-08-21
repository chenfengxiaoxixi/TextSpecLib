//
//  ChainProgramming.h
//  SpecLibDemo
//
//  Created by chenfeng on 2018/8/21.
//  Copyright © 2018年 chenfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChainProgramming : NSObject

- (ChainProgramming *(^)(NSString *name))work;
- (ChainProgramming *(^)(NSString *name))sleep;
    
@end
