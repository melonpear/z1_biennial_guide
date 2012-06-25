//
//  guideAppDelegate.h
//  guide
//
//  Created by Anna Billstrom on 6/25/12.
//  Copyright 2012 bannae.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface guideAppDelegate : NSObject <UIApplicationDelegate> {
    NSArray *programcategoriesA;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

// zero1 objects
@property (nonatomic, retain) NSArray *programcategoriesA;


@end
