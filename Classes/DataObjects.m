//
//  DataObjects.m
//  RTALiveTraffic
//
//  Created by Ben Sykes on 29/11/10.
//  Copyright 2010 Eightfour Pty Ltd. All rights reserved.
//

#import "DataObjects.h"
#import "JSONConnector.h"



@implementation DataObjects


- (NSMutableDictionary*) getCameras
{
	JSONConnector* json = [[JSONConnector alloc] autorelease];
	return (NSMutableDictionary*)[json objectWithUrl:[NSURL URLWithString:@"http://livetraffic.rta.nsw.gov.au/data/traffic-cam.json"]];	
}

- (NSMutableDictionary*) getIncidents
{
	JSONConnector* json = [[JSONConnector alloc] autorelease];
	return (NSMutableDictionary*)[json objectWithUrl:[NSURL URLWithString:@"http://livetraffic.rta.nsw.gov.au/traffic/hazards/incident.json"]];	
}

- (NSMutableDictionary*) getMajorEvents
{
	JSONConnector* json = [[JSONConnector alloc] autorelease];
	return (NSMutableDictionary*)[json objectWithUrl:[NSURL URLWithString:@"http://livetraffic.rta.nsw.gov.au/traffic/hazards/majorevent.json"]];	
}

- (NSMutableDictionary*)getRoadwork
{
	JSONConnector* json = [[JSONConnector alloc] autorelease];
	return (NSMutableDictionary*)[json objectWithUrl:[NSURL URLWithString:@"http://livetraffic.rta.nsw.gov.au/traffic/hazards/roadwork.json"]];	
}

- (NSMutableDictionary*)getVMS
{
	JSONConnector* json = [[JSONConnector alloc] autorelease];
	return (NSMutableDictionary*)[json objectWithUrl:[NSURL URLWithString:@"http://livetraffic.rta.nsw.gov.au/traffic/vms/vms.json"]];	

}


@end
