//
//  ViewController.m
//  TabBarSkip
//
//  Created by  江苏 on 16/5/30.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor=[UIColor colorWithRed:arc4random_uniform(30)/20.0 green:0 blue:0 alpha:1.0];
    UILabel* label=[[UILabel alloc]init];
    label.frame=CGRectMake(100, 200, 100,30);
    label.text=self.item;
    label.textColor=[UIColor whiteColor];
    label.font=[UIFont systemFontOfSize:25.0];
    [self.view addSubview:label];
}

@end
