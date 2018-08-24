//
//  UIButton+ChainProgramming.m
//  SpecLibDemo
//
//  Created by chenfeng on 2018/8/23.
//  Copyright © 2018年 chenfeng. All rights reserved.
//

#import "UIButton+ChainProgramming.h"

@implementation UIButton (ChainProgramming)

//button初始化方法一般使用它自己的枚举类型初始化
+ (UIButton *(^)(UIButtonType buttonType))cp_initWithType
{
    return ^(UIButtonType buttonType)
    {
        return [UIButton buttonWithType:buttonType];
    };
}

- (UIButton *(^)(id target, SEL sel, UIControlEvents event))cp_addTarget
{
    return ^(id target, SEL sel, UIControlEvents event)
    {
        [self addTarget:target action:sel forControlEvents:event];
        return self;
    };
    
}

- (UIButton *(^)(NSString *text, UIControlState state))cp_title
{
    return ^(NSString *text, UIControlState state)
    {
        [self setTitle:text forState:state];
        return self;
    };
}

- (UIButton *(^)(UIColor *color, UIControlState state))cp_titleColor
{
    return ^(UIColor *color, UIControlState state)
    {
        [self setTitleColor:color forState:state];
        return self;
    };
}

- (UIButton *(^)(UIFont *font))cp_titleFont
{
    return ^(UIFont *font)
    {
        self.titleLabel.font = font;
        return self;
    };
}

- (UIButton *(^)(NSString *text, UIColor *color, UIFont *font, UIControlState state))cp_titleAndTitleColor
{
    return ^(NSString *text, UIColor *color, UIFont *font, UIControlState state)
    {
        self.titleLabel.font = font;
        [self setTitle:text forState:state];
        [self setTitleColor:color forState:state];
        
        return self;
    };
    
}

@end
