//
//  RTALiveTrafficAppDelegate.m
//  RTALiveTraffic
//
//  Created by Ben Sykes on 29/11/10.
//  Copyright Eightfour Pty Ltd 2010. All rights reserved.
//

#import "RTALiveTrafficAppDelegate.h"
#import "RootViewController.h"


@implementation RTALiveTrafficAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
	
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

