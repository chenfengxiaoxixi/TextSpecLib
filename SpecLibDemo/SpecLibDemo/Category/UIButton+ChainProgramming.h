//
//  UIButton+ChainProgramming.h
//  SpecLibDemo
//
//  Created by chenfeng on 2018/8/23.
//  Copyright © 2018年 chenfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ChainProgramming)

+ (UIButton *(^)(UIButtonType buttonType))cp_initWithType;

- (UIButton *(^)(id target, SEL sel, UIControlEvents event))cp_addTarget;

- (UIButton *(^)(NSString *text, UIControlState state))cp_title;

- (UIButton *(^)(UIColor *color, UIControlState state))cp_titleColor;

- (UIButton *(^)(UIFont *font))cp_titleFont;

- (UIButton *(^)(NSString *text, UIColor *color, UIFont *font, UIControlState state))cp_titleAndTitleColor;

@end
