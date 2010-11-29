//
//  ImageDisplay.m
//  RTALiveTraffic
//
//  Created by Ben Sykes on 29/11/10.
//  Copyright 2010 Eightfour Pty Ltd. All rights reserved.
//

#import "ImageDisplay.h"


@implementation ImageDisplay

@synthesize image, imageUrl,cameraName;
/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
  
	UIBarButtonItem* bi = [[UIBarButtonItem alloc]
	initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(refresh:)];
	bi.style = UIBarButtonItemStyleBordered;
	self.navigationItem.rightBarButtonItem = bi;
	[bi release];
	
	CGRect webFrame = [[UIScreen mainScreen] applicationFrame];
	webFrame.origin.y -= 20;
	
	image = [[UIWebView alloc] initWithFrame:webFrame];
	//NSURL *url = [NSURL URLWithString:imageUrl];
	//URL Requst Object
	//NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
	
	NSString* content = [NSString stringWithFormat:@"<html><style>*{margin:0;padding:0;color:#fff;font-family:Helvetica, sans-serif;font-size:14px;}</style><body bgcolor=#000000><img src='%@'/><br/><center>%@</center></body></html>",imageUrl,cameraName];
	
	//Load the request in the UIWebView.
	[image loadHTMLString:content baseURL:[NSURL URLWithString:@"http://livetraffic.rta.nsw.gov.au"]];
	
	[self.view addSubview:image];
	self.navigationItem.title = @"Image";
}

- (void)refresh:(id) sender
{
	NSString* content = [NSString stringWithFormat:@"<html><style>*{margin:0;padding:0;color:#fff;font-family:Helvetica, sans-serif;font-size:14px;}</style><body bgcolor=#000000><img src='%@'/><br/><center>%@</center></body></html>",imageUrl,cameraName];
	
	//Load the request in the UIWebView.
	[image loadHTMLString:content baseURL:[NSURL URLWithString:@"http://livetraffic.rta.nsw.gov.au"]];
	
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
