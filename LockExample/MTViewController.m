//
//  MTViewController.m
//  LockExample
//
//  Created by Chad Johnston on 6/6/12.
//  Copyright (c) 2012 Megatome Technologies LLC. All rights reserved.
//

#import "MTViewController.h"

@interface MTViewController ()

@end

@implementation MTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
