//
//  Incidents.m
//  RTALiveTraffic
//
//  Created by Ben Sykes on 30/11/10.
//  Copyright 2010 Eightfour Pty Ltd. All rights reserved.
//

#import "Incidents.h"


@implementation Incidents

@synthesize dobj, incidents;


- (void)viewDidLoad {
    [super viewDidLoad];
	
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	dobj = [[DataObjects alloc] init];
	self.incidents = [dobj getIncidents];
	//NSLog(@"%@", self.incidents);
}


/*
 - (void)viewWillAppear:(BOOL)animated {
 [super viewWillAppear:animated];
 }
 */

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
	self.navigationItem.title = @"Incidents";
	
	
}

/*
 - (void)viewWillDisappear:(BOOL)animated {
 [super viewWillDisappear:animated];
 }
 */
/*
 - (void)viewDidDisappear:(BOOL)animated {
 [super viewDidDisappear:animated];
 }
 */

/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations.
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release anything that can be recreated in viewDidLoad or on demand.
	// e.g. self.myOutlet = nil;
}


#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	//NSLog(@"%@",[[dobj.cameras objectForKey:@"features"] objectAtIndex:0]);
	//NSLog(@"%d",([[dobj.cameras objectForKey:@"features"] count])-1);
	return ([[self.incidents objectForKey:@"features"] count])-1;
    //return 0;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *CellIdentifier = [NSString stringWithFormat:@"Cell %d", indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
		cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
	NSLog(@"cellForRowAtIndexPath: %d",indexPath.row);
	//NSLog(@"%@", self.cameras);
	//NSLog(@"%@", self.incidents);
	//NSLog(@"%@",[[self.incidents objectForKey:@"features"] objectAtIndex:indexPath.row]);
	cell.textLabel.text = [NSString stringWithFormat:@"%@", [[[[self.incidents objectForKey:@"features"] objectAtIndex:indexPath.row ] objectForKey:@"properties" ] objectForKey:@"headline"]];
	//dobj = [DataObjects alloc];
	//[self.dobj create];
	
	//NSLog(@"%@",[dobj.cameras objectForKey:@"features"]);
	// Configure the cell.
	//cell.detailTextLabel.text = @"blah";
	
    return cell;
}




// Override to support row selection in the table view.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
    // Navigation logic may go here -- for example, create and push another view controller.
	// AnotherViewController *anotherViewController = [[AnotherViewController alloc] initWithNibName:@"AnotherView" bundle:nil];
	// [self.navigationController pushViewController:anotherViewController animated:YES];
	// [anotherViewController release];
	NSLog(@"Pushed item %d",indexPath.row);
	//dobj = [DataObjects alloc];
	//[self.dobj create];
	//NSLog(@"%@", self.cameras);
	//NSLog(@"%@",[[self.cameras objectForKey:@"features"] objectAtIndex:indexPath.row]);
	
	Incident *inc = [[Incident alloc] init];
	
	//NSLog("%@",	[[[[dobj.cameras objectForKey:@"features"] objectAtIndex:indexPath.row ] objectForKey:@"properties" ] objectForKey:@"href"]);
	inc.inci = [[self.incidents objectForKey:@"features"] objectAtIndex:indexPath.row ];
	[self.navigationController pushViewController:inc animated:YES];
	[inc release];
	
}



/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */


/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source.
 [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }   
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
 }   
 }
 */


/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */


/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


- (void)dealloc {
    [super dealloc];
}

- (id) init{
	self = [super init];
	
	return self;
	
}


@end
