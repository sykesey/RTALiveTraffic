//
//  RTALiveTrafficAppDelegate.h
//  RTALiveTraffic
//
//  Created by Ben Sykes on 29/11/10.
//  Copyright Eightfour Pty Ltd 2010. All rights reserved.
//

@interface RTALiveTrafficAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

