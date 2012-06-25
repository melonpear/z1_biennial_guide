//
//  Detail.m
//  guide
//
//  Created by Anna Billstrom on 6/25/12.
//  Copyright 2012 Momentus Media. All rights reserved.
//

#import "Detail.h"

@implementation Detail
@synthesize program,programL,detailImage;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - good utility functions
- (UIImage *) imageForObject:(NSString *)urlString {
    // Get the object image
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:urlString]]];
    return image;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    // hard code image this time, but in future do data call to get
    // detail info, or do data call in app delegate and create a dictionary of
    // all detailed exhibits with image url
    // http://www.zero1biennial.org/sites/default/files/imagecache/program_search/ZERO1_Interior_FINAL_2.jpg
    
    
    self.detailImage.image = [self imageForObject:@"http://www.zero1biennial.org/sites/default/files/imagecache/program_search/ZERO1_Interior_FINAL_2.jpg"];

    self.programL.text = self.program;
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)dealloc{
    [detailImage release];
    [programL release];
    [program release];
    [super dealloc];
}

@end
