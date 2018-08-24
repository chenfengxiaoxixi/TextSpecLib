//
//  UILabel+ChainProgramming.m
//  SpecLibDemo
//
//  Created by chenfeng on 2018/8/23.
//  Copyright © 2018年 chenfeng. All rights reserved.
//

#import "UILabel+ChainProgramming.h"

@implementation UILabel (ChainProgramming)

- (UILabel *(^)(NSString *text))cp_text
{
    return ^(NSString *text)
    {
        self.text = text;
        return self;
    };
}

- (UILabel *(^)(UIColor *color))cp_textColor
{
    return ^(UIColor *color)
    {
        self.textColor = color;
        return self;
    };
}

- (UILabel *(^)(UIFont *font))cp_textFont
{
    return ^(UIFont *font)
    {
        self.font = font;
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment textAlignment))cp_textAlignment
{
    return ^(NSTextAlignment textAlignment)
    {
        self.textAlignment = textAlignment;
        return self;
    };
}

@end
