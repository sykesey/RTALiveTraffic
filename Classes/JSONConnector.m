//
//  JSONConnector.m
//  BizTrav
//
//  Created by Ben Sykes on 1/12/09.
//  Copyright 2009 AustralianTraveller. All rights reserved.
//

#import "JSONConnector.h"


@implementation JSONConnector


- (NSString *)stringWithUrl:(NSURL *)url
{
	NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url
											cachePolicy:NSURLRequestReturnCacheDataElseLoad
											timeoutInterval:30];
	NSData *urlData;
	NSURLResponse *response;
	NSError *error;
	
	urlData = [NSURLConnection sendSynchronousRequest:urlRequest returningResponse:&response error:&error];
	
	return [[NSString alloc] initWithData:urlData encoding:NSUTF8StringEncoding];
}

- (id) objectWithUrl:(NSURL *)url
{
	SBJSON *jsonParser = [SBJSON new];
	NSString *jsonString = [self stringWithUrl:url];
	NSLog(@"%@",jsonString);
	NSError *error;
	
	id parsedJson = [jsonParser objectWithString:jsonString error:&error];
	//if (error != NULL)
	//	NSLog(@"%@",error);
	return parsedJson;
}


- (id) init
{
	[super init];
	return self;
}

@end
