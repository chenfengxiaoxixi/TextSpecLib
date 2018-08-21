//
//  ViewController.m
//  SpecLibDemo
//
//  Created by chenfeng on 2018/8/21.
//  Copyright © 2018年 chenfeng. All rights reserved.
//

#import "ViewController.h"
#import "ChainProgramming.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ChainProgramming *chain = [[ChainProgramming alloc] init];
    chain.work(@"hahah").sleep(@"wowoow");

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
