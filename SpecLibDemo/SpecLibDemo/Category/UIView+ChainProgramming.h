//
//  UIView+ChainProgramming.h
//  SpecLibDemo
//
//  Created by chenfeng on 2018/8/22.
//  Copyright © 2018年 chenfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ChainProgramming)

+ (instancetype )cp_init;

- (instancetype (^)(CGFloat x,CGFloat y,CGFloat width,CGFloat height))cp_frame;
- (UIView *(^)(CGFloat x))cp_x;
- (UIView *(^)(CGFloat y))cp_y;
- (UIView *(^)(CGFloat width))cp_width;
- (UIView *(^)(CGFloat height))cp_height;

- (UIView *(^)(UIColor *color))cp_backgroundColor;

- (UIView *(^)(UIView *view))cp_addSubView;

- (UIView *)And;


@end
