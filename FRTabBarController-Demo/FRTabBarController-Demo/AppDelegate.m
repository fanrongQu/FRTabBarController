//
//  AppDelegate.m
//  FRTabBarController-Demo
//
//  Created by mac on 2017/11/30.
//  Copyright © 2017年 fanrongQu. All rights reserved.
//

#import "AppDelegate.h"
#import "FRTabBarController.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    FRTabBarController *tabbarVC = [[FRTabBarController alloc] init];
    
    //设置item的颜色
    [tabbarVC setTabBarItemNormalColor:[UIColor blackColor] selectedColor:[UIColor redColor]];
    
    NSString *HomeNormalIcon = @"y0";
    NSString *HomeSelectIcon = @"y0h";
    
    NSString *ClassifyNormalIcon = @"y1";
    NSString *ClassifySelectIcon = @"y1h";
    
    NSString *footMarkNormalIcon = @"y2";
    NSString *footMarkSelectIcon = @"y2h";
    
    NSString *shoppingCartNormalIcon = @"y3";
    NSString *shoppingCartSelectIcon = @"y3h";
    
    NSString *mineNormalIcon = @"y4";
    NSString *mineSelectIcon = @"y4h";
    
    //设置tabBarVC的子控制器
    UIViewController *HomeVC = [[UIViewController alloc]init];
    HomeVC.view.backgroundColor = [UIColor redColor];
    UINavigationController *HomeNav = [[UINavigationController alloc] initWithRootViewController:HomeVC];
    [tabbarVC addChildNavigationController:HomeNav title:nil image:HomeNormalIcon selectedImage:HomeSelectIcon];
    
    UIViewController *ClassifyVC = [[UIViewController alloc]init];
    ClassifyVC.view.backgroundColor = [UIColor yellowColor];
    UINavigationController *ClassifyNav = [[UINavigationController alloc] initWithRootViewController:ClassifyVC];
    [tabbarVC addChildNavigationController:ClassifyNav title:nil image:ClassifyNormalIcon selectedImage:ClassifySelectIcon];
    
    UIViewController *footMarkVC = [[UIViewController alloc]init];
    footMarkVC.view.backgroundColor = [UIColor brownColor];
    UINavigationController *footMarkNav = [[UINavigationController alloc] initWithRootViewController:footMarkVC];
    [tabbarVC addChildNavigationController:footMarkNav title:nil image:footMarkNormalIcon selectedImage:footMarkSelectIcon];
    
    UIViewController *shoppingCartVC = [[UIViewController alloc]init];
    shoppingCartVC.view.backgroundColor = [UIColor greenColor];
    UINavigationController *shoppingCartNav = [[UINavigationController alloc] initWithRootViewController:shoppingCartVC];
    [tabbarVC addChildNavigationController:shoppingCartNav title:nil image:shoppingCartNormalIcon selectedImage:shoppingCartSelectIcon];
    
    UIViewController *mineVC = [[UIViewController alloc]init];
    UINavigationController *mineNav = [[UINavigationController alloc] initWithRootViewController:mineVC];
    [tabbarVC addChildNavigationController:mineNav title:nil image:mineNormalIcon selectedImage:mineSelectIcon];
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self.window setRootViewController:tabbarVC];
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
