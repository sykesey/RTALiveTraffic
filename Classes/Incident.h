//
//  Incident.h
//  RTALiveTraffic
//
//  Created by Ben Sykes on 30/11/10.
//  Copyright 2010 Eightfour Pty Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Incident : UIViewController {
	NSMutableDictionary* inci;
	UIWebView* webview;
}

@property (nonatomic, retain) NSMutableDictionary* inci;
@property (nonatomic, retain) UIWebView* webview;

@end
