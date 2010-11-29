//
//  DataObjects.h
//  RTALiveTraffic
//
//  Created by Ben Sykes on 29/11/10.
//  Copyright 2010 Eightfour Pty Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface DataObjects : NSObject {

}


- (NSMutableDictionary*)getCameras;
- (NSMutableDictionary*)getIncidents;
- (NSMutableDictionary*)getRoadwork;
- (NSMutableDictionary*)getMajorEvents;
- (NSMutableDictionary*)getVMS;



@end
