//
//  CustomTabBarAppDelegate.m
//  CustomTabBar
//
//  Created by KnappLab 1 on 10/31/11.
//  Copyright Illinois Institute of Technology 2011. All rights reserved.
//

#import "CustomTabBarAppDelegate.h"
#import "CarCell.h"



//creating a priate class of UITabBar
@interface UITabBarController (private)
-(UITabBar *)tabBar;
@end


@implementation CustomTabBarAppDelegate

@synthesize window;
@synthesize tabBarController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    CGRect frame = CGRectMake(0, 0, 480, 49);
    UIView *view = [[UIView alloc] initWithFrame:frame];
    UIImage *tabBarBackgroundImage =[UIImage imageNamed:@"background5.jpg"];
    UIColor *color = [[UIColor alloc] initWithPatternImage:tabBarBackgroundImage];
    
    [view setBackgroundColor:color];
    [color release];
    [[tabBarController tabBar] insertSubview:view atIndex:0];
    [view release];
    
    // Add the tab bar controller's current view as a subview of the window
    [window addSubview:tabBarController.view];
}


- (void)dealloc {
    [tabBarController release];
    [window release];
    [super dealloc];
}


@end

