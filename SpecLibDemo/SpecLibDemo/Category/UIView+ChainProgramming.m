//
//  UIView+ChainProgramming.m
//  SpecLibDemo
//
//  Created by chenfeng on 2018/8/22.
//  Copyright © 2018年 chenfeng. All rights reserved.
//

#import "UIView+ChainProgramming.h"

@interface UIView ()
{
    id object;
}
@end

@implementation UIView (ChainProgramming)

+ (instancetype )cp_init
{
    return [[[self class] alloc] init];
}

- (instancetype (^)(CGFloat x,CGFloat y,CGFloat width,CGFloat height))cp_frame
{
    return ^(CGFloat x,CGFloat y,CGFloat width,CGFloat height)
    {
        CGRect frame = self.frame;
        frame.origin.x = x;
        frame.origin.y = y;
        frame.size.width = width;
        frame.size.height = height;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat x))cp_x
{
    return ^(CGFloat x)
    {
        CGRect frame = self.frame;
        frame.origin.x = x;
        self.frame = frame;
        return self;
    };
    
}

- (UIView *(^)(CGFloat y))cp_y;
{
    return ^(CGFloat y)
    {
        CGRect frame = self.frame;
        frame.origin.y = y;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat width))cp_width
{
    return ^(CGFloat width)
    {
        CGRect frame = self.frame;
        frame.size.width = width;
        self.frame = frame;
        return self;
    };
}


- (UIView *(^)(CGFloat height))cp_height
{
    return ^(CGFloat height)
    {
        CGRect frame = self.frame;
        frame.size.height = height;
        self.frame = frame;
        return self;
    };
}

- (UIView * (^)(UIColor *color))cp_backgroundColor
{
    return ^(UIColor *color)
    {
        self.backgroundColor = color;
        return self;
    };
    
}

- (UIView *(^)(UIView *view))cp_addSubView
{
    return ^(UIView *view)
    {
        [self addSubview:view];
        return self;
    };
}

- (UIView *)And
{
    return self;
}

@end
