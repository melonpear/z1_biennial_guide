//
//  guideAppDelegate.m
//  guide
//
//  Created by Anna Billstrom on 6/25/12.
//  Copyright 2012 banane.com. All rights reserved.
//

#import "guideAppDelegate.h"

@implementation guideAppDelegate

@synthesize window = _window;
@synthesize navigationController = _navigationController;
@synthesize programcategoriesA,programsDictionary;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.A
    // Add the navigation controller's view to the window and display.
    
    
    // setup objects we need for entire app
    // using exhibit progs as sample for other cats
    // this should be a data call to API 
    
    NSArray *exhibitProgs = [[NSArray alloc] initWithObjects:@"Seeking Silicon Valley",@"Dead Drops", nil];
    self.programsDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
                          exhibitProgs,@"Exhibits",
                          exhibitProgs,@"Artists",
                          exhibitProgs,@"Public Art",
                          nil];
    
    self.programcategoriesA = [programsDictionary allKeys];
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_navigationController release];
    [programcategoriesA release];
    [programsDictionary release];
    [super dealloc];
}

@end
