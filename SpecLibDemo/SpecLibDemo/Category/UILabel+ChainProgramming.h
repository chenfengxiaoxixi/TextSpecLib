//
//  UILabel+ChainProgramming.h
//  SpecLibDemo
//
//  Created by chenfeng on 2018/8/23.
//  Copyright © 2018年 chenfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ChainProgramming)


- (UILabel *(^)(NSString *text))cp_text;

- (UILabel *(^)(UIColor *color))cp_textColor;

- (UILabel *(^)(UIFont *font))cp_textFont;

- (UILabel *(^)(NSTextAlignment textAlignment))cp_textAlignment;

@end
