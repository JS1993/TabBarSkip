//
//  AppDelegate.m
//  TabBarSkip
//
//  Created by  江苏 on 16/5/30.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()<UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    self.window=[[UIWindow alloc]init];
    
    self.window.frame=[UIScreen mainScreen].bounds;
    
    UITabBarController* tab=[[UITabBarController alloc]init];
    
    for (NSInteger i=0;i<4;i++ ) {
        ViewController* vc=[[ViewController alloc]init];
        vc.item=[NSString stringWithFormat:@"%zd",i];
        [tab addChildViewController:vc];
    }
    
    tab.delegate=self;
    
    self.window.rootViewController=tab;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

static NSInteger selectingIndex;

-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
    //记录下用户选择前往的索引
    selectingIndex=tabBarController.selectedIndex;
    
        if (tabBarController.selectedIndex!=0) {
    
            UIAlertController * alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"切换后信息将消失" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancleAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
    
                //前往用户刚才点击的控制器
                tabBarController.selectedIndex=selectingIndex;
            }];
            UIAlertAction *goAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                
            }];
    
            [alertController addAction:goAction];
            [alertController addAction:cancleAction];
            [tabBarController presentViewController:alertController animated:YES completion:^{
    
            }];
            
        }
        tabBarController.selectedIndex=0;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
