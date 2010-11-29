//
//  RootViewController.m
//  RTALiveTraffic
//
//  Created by Ben Sykes on 29/11/10.
//  Copyright Eightfour Pty Ltd 2010. All rights reserved.
//

#import "RootViewController.h"



@implementation RootViewController



/*
- (void)viewDidLoad {
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

}
*/

/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
	self.navigationItem.title = @"RTA Live Traffic";
	
	
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
	return 2;
    
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *CellIdentifier = [NSString stringWithFormat:@"Root Cell %d", indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
		
    }
	NSLog(@"cellForRowAtIndexPath: %d",indexPath.row);
 	switch( indexPath.row )
	{
		case 0:
			cell.textLabel.text = @"Cameras";
			cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
			break;
		case 1:
			cell.textLabel.text = @"Incidents";
			cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
			break;
		default:
			cell.textLabel.text = @"Undefined";
			break;
	}
	
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
	switch( indexPath.row )
	{
		case 0:
			1+1;
			Cameras* cam = [[Cameras alloc] init];
			[self.navigationController pushViewController:cam animated:YES];
			[cam release];
			break;
		case 1:
			1+1;
			Incidents* inci = [[Incidents alloc] init];
			[self.navigationController pushViewController:inci animated:YES];
			[inci release];
			break;
		default:
			break;
	}
	
	//NSLog("%@",	[[[[dobj.cameras objectForKey:@"features"] objectAtIndex:indexPath.row ] objectForKey:@"properties" ] objectForKey:@"href"]);
	
					 
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

