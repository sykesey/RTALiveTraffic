//
//  Cameras.h
//  RTALiveTraffic
//
//  Created by Ben Sykes on 30/11/10.
//  Copyright 2010 Eightfour Pty Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataObjects.h"
#import "ImageDisplay.h"



@interface Cameras : UITableViewController {
	DataObjects* dobj;
	NSDictionary* cameras;
	NSArray* images;
}

@property (nonatomic, assign) DataObjects* dobj;
@property (nonatomic, retain) NSDictionary *cameras;


@end
