//
//  ViewController.m
//  SpecLibDemo
//
//  Created by chenfeng on 2018/8/21.
//  Copyright © 2018年 chenfeng. All rights reserved.
//

#import "ViewController.h"
#import "ChainProgramming.h"
#import "CategoryHeader.h"

#define RedColor [UIColor redColor]
#define BlueColor [UIColor blueColor]
#define BlackColor [UIColor blackColor]

#define SFONT(a) [UIFont systemFontOfSize:a]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view = UIView.cp_init.cp_frame(10,100,100,100);
    view.cp_backgroundColor(BlueColor);
    self.view.cp_addSubView(view);

    UIButton *button = UIButton.cp_initWithType(UIButtonTypeCustom);
    button.cp_frame(200,100,60,60);
    button.cp_titleAndTitleColor(@"按钮",BlackColor,SFONT(18),UIControlStateNormal);
    button.cp_addTarget(self,@selector(btnAction:),UIControlEventTouchUpInside);
    self.view.cp_addSubView(button);

    UILabel *label = UILabel.cp_init.cp_frame(100,300,60,30);
    label.cp_text(@"喔喔喔").cp_textFont(SFONT(16)).cp_textColor(RedColor);
    self.view.cp_addSubView(label);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)btnAction:(UIButton *)sender
{
    NSLog(@"点击");
}

@end
