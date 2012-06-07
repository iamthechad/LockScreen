//
//  MTLVViewController.m
//  LockExample
//
//  Created by Chad Johnston on 6/6/12.
//  Copyright (c) 2012 Megatome Technologies LLC. All rights reserved.
//

#import "MTLockViewController.h"

@interface MTLockViewController ()

@end

@implementation MTLockViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
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
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)unlockSlider:(id)sender
{
    UISlider *uis = (UISlider*)sender;
    int sliderValue = (int)(uis.value + 0.5f);
    if (sliderValue == 100) {
        uis.value = 0.0f;
        [self.view removeFromSuperview];
    } else {
        [UIView beginAnimations:@"SlideCancel" context:nil];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.35];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        uis.value = 0.0f;
        [UIView commitAnimations];
    }
}

@end
