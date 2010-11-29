//
//  JSONConnector.h
//  BizTrav
//
//  Created by Ben Sykes on 1/12/09.
//  Copyright 2009 AustralianTraveller. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSON.h"


@interface JSONConnector : NSObject {
		NSString* jsonURL;
}

- (NSString *)stringWithUrl:(NSURL *)url;
- (id) objectWithUrl:(NSURL *)url;

@end
