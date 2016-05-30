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
    
    self.tabBarController.tabBarItem.title=self.item;
    
    UILabel* label=[[UILabel alloc]init];
    label.frame=CGRectMake(100, 200, 100,30);
    label.text=self.item;
    [self.view addSubview:label];
}

@end
