//
//  AppDelegate.m
//  SlideBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 huanhuba. All rights reserved.
//

#import "AppDelegate.h"
#import "MenuItem.h"
#import "ContentViewController.h"
#import "MenuViewController.h"
#import "SlideBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    NSMutableArray* menuItems = [[NSMutableArray alloc]init];
    
    ContentViewController* contentVC_1 = [[ContentViewController alloc]init];
    MenuItem* menuItem_1 = [[MenuItem alloc]initWithTitle:@"menu_1" andItemId:1 andBindVC:contentVC_1];
    [menuItems addObject:menuItem_1];
     ContentViewController* contentVC_2 = [[ContentViewController alloc]init];
    MenuItem* menuItem_2 = [[MenuItem alloc]initWithTitle:@"menu_2" andItemId:1 andBindVC:contentVC_2];
    [menuItems addObject:menuItem_2];
     ContentViewController* contentVC_3 = [[ContentViewController alloc]init];
    MenuItem* menuItem_3 = [[MenuItem alloc]initWithTitle:@"menu_3" andItemId:1 andBindVC:contentVC_3];
    [menuItems addObject:menuItem_3];
     ContentViewController* contentVC_4 = [[ContentViewController alloc]init];
    MenuItem* menuItem_4 = [[MenuItem alloc]initWithTitle:@"menu_4" andItemId:1 andBindVC:contentVC_4];
    [menuItems addObject:menuItem_4];
     ContentViewController* contentVC_5 = [[ContentViewController alloc]init];
    MenuItem* menuItem_5 = [[MenuItem alloc]initWithTitle:@"menu_5" andItemId:1 andBindVC:contentVC_5];
    [menuItems addObject:menuItem_5];

    
    MenuViewController* menu = [[MenuViewController alloc]initWithMenuItems:menuItems andMenuWidth:180];
    SlideBarViewController* masterVC = [[SlideBarViewController alloc]initWithMenu:menu];
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController= masterVC;
    [self.window makeKeyAndVisible];
    
    return YES;
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
