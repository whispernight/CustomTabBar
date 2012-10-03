//
//  CustomTabBarAppDelegate.h
//  CustomTabBar
//
//  Created by KnappLab 1 on 10/31/11.
//  Copyright Illinois Institute of Technology 2011. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomTabBarAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
