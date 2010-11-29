//
//  Incident.h
//  RTALiveTraffic
//
//  Created by Ben Sykes on 30/11/10.
//  Copyright 2010 Eightfour Pty Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Annotation.h"

@interface Incident : UIViewController {
	NSMutableDictionary* inci;
	UIWebView* webview;
	MKMapView* mk;
}

@property (nonatomic, retain) NSMutableDictionary* inci;
@property (nonatomic, retain) UIWebView* webview;
@property (nonatomic,retain) MKMapView* mk;

@end
