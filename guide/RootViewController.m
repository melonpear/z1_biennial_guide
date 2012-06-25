//
//  RootViewController.m
//  guide
//
//  Created by Anna Billstrom on 6/25/12.
//  Copyright 2012 banane.com. All rights reserved.
//

#import "RootViewController.h"
#import "ProgramCats.h"

@implementation RootViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(IBAction)viewPrograms:(id)sender{
    ProgramCats *pvc = [[ProgramCats alloc] initWithNibName:@"ProgramCats" bundle:nil];
    [[self navigationController] pushViewController:pvc animated:YES];
    [pvc release];
    
}
-(IBAction)viewLocations:(id)sender{
    
}
-(IBAction)viewReact:(id)sender{
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}

- (void)dealloc
{
    [super dealloc];
}

@end
