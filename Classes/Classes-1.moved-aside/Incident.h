//
//  Incident.h
//  RTALiveTraffic
//
//  Created by Ben Sykes on 30/11/10.
//  Copyright 2010 Eightfour Pty Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Incident : UIView {
	NSDictionary* incident;
}

@property (nonatomic, retain) NSDictionary* incident;

@end
