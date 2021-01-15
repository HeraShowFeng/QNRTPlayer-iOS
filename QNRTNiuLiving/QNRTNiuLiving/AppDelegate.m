//
//  AppDelegate.m
//  NiuLiving
//
//  Created by 何昊宇 on 2018/3/12.
//  Copyright © 2018年 PILI. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import <PLMediaStreamingKit/PLMediaStreamingKit.h>
#import <Bugsnag.h>
#import <QNRTPlayerKit/QNRTPlayer.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Bugsnag startBugsnagWithApiKey:@"f8173cc59cf479b26f2a1fe6661058ee"];
    
    // Override point for customization after application launch.
    [PLStreamingEnv initEnv];
    HomeViewController *homeViewController = [[HomeViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:homeViewController];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = navigationController;
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController.view.frame = self.window.bounds;
    self.window.rootViewController.view.autoresizingMask = UIViewAutoresizingFlexibleWidth |
    UIViewAutoresizingFlexibleHeight;
    [self.window makeKeyAndVisible];
    [QNRTPlayer enableFileLogging];
    
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
