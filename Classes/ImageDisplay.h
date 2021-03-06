//
//  ImageDisplay.h
//  RTALiveTraffic
//
//  Created by Ben Sykes on 29/11/10.
//  Copyright 2010 Eightfour Pty Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ImageDisplay : UIViewController {
	//UIImage* image;
	UIWebView* image;
	NSString* imageUrl;
	NSString* cameraName;
}

@property (nonatomic, retain) UIWebView* image;
@property (nonatomic, retain) NSString* imageUrl;
@property (nonatomic, retain) NSString* cameraName;

- (void)refresh:(id) sender;


@end
