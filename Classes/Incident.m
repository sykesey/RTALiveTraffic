//
//  Incident.m
//  RTALiveTraffic
//
//  Created by Ben Sykes on 30/11/10.
//  Copyright 2010 Eightfour Pty Ltd. All rights reserved.
//

#import "Incident.h"


@implementation Incident

@synthesize	inci,webview;

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
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	CGRect webFrame = [[UIScreen mainScreen] applicationFrame];
	self.webview = [[UIWebView alloc] initWithFrame:webFrame];
	
	NSString* display = [[self.inci objectForKey:@"properties"] objectForKey:@"displayName"];
	NSString* category = [[self.inci objectForKey:@"properties"] objectForKey:@"mainCategory"];
	NSString* advice = [[self.inci objectForKey:@"properties"] objectForKey:@"adviceA"];
	NSString* street = [[[[self.inci objectForKey:@"properties"] objectForKey:@"roads"] objectAtIndex:0] objectForKey:@"mainStreet"];
	NSString* suburb = [[[[self.inci objectForKey:@"properties"] objectForKey:@"roads"] objectAtIndex:0] objectForKey:@"suburb"];
	//NSString* street = [[self.incident objectForKey:@"properties"] objectForKey:"displayName"];
	
	
	NSString* content = [NSString stringWithFormat:@"<html><body><b>Display Name</b>: %@<br/><b>Category</b>: %@<br/><b>Advice A</b>: %@<br/><b>Street</b>: %@<br/><b>Suburb</b>: %@<br/><br/></body></html>", display, category, advice, street, suburb];
	
	
	[self.webview loadHTMLString:content baseURL:[NSURL URLWithString:@"http://google.com"]];
	[self.view addSubview:webview];			 
	
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
