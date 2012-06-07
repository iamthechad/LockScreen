//
//  MTViewController.m
//  LockExample
//
//  Created by Chad Johnston on 6/6/12.
//  Copyright (c) 2012 Megatome Technologies LLC. All rights reserved.
//

#import "MTViewController.h"
#import "MTLockViewController.h"

@interface MTViewController ()

@end

@implementation MTViewController

@synthesize lockController;

- (void)viewDidLoad
{
    [super viewDidLoad];
    lockController = [[MTLockViewController alloc] initWithNibName:@"MTLVViewController" bundle:nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void) removeOverlay: (UIView *) overlayView
{
    [overlayView removeFromSuperview];
}

- (IBAction)lockScreen:(id)sender
{
    [self.view addSubview:lockController.view];
}

@end
