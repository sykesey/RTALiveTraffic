//
//  Incidents.h
//  RTALiveTraffic
//
//  Created by Ben Sykes on 30/11/10.
//  Copyright 2010 Eightfour Pty Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataObjects.h"
#import "Incident.h"


@interface Incidents : UITableViewController {
	DataObjects* dobj;
	NSDictionary* incidents;

}

@property (nonatomic, assign) DataObjects* dobj;
@property (nonatomic, retain) NSDictionary *incidents;


@end
