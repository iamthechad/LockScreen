//
//  MTViewController.m
//  LockExample
//
//  Created by Chad Johnston on 6/6/12.
//  Copyright (c) 2012 Megatome Technologies LLC. All rights reserved.
//

#import "MTViewController.h"

@interface MTViewController ()
    @property (strong, nonatomic) UIView *lockScreenCanvasView;
@end

@implementation MTViewController

@synthesize lockScreenView = _lockScreenView;
@synthesize lockScreenSlider = _lockScreenSlider;
@synthesize lockScreenCanvasView = _lockScreenCanvasView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Lock Demo";
    self.lockScreenCanvasView = [[UIView alloc] initWithFrame:self.lockScreenView.bounds];
    self.lockScreenCanvasView.backgroundColor = [UIColor blackColor];
    [self.lockScreenCanvasView setAlpha:0.5];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)lockScreen:(id)sender
{
    [self.view addSubview:self.lockScreenCanvasView];
    [self.view addSubview:self.lockScreenView];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (IBAction)unlockSlider:(id)sender
{
    UISlider *uis = (UISlider*)sender;
    int sliderValue = (int)(uis.value + 0.5f);
    if (sliderValue == 100) {
        uis.value = 0.0f;
        [self.navigationController setNavigationBarHidden:NO animated:YES];
        [self.lockScreenCanvasView removeFromSuperview];
        [self.lockScreenView removeFromSuperview];
    } else {
        [UIView 
         animateWithDuration:0.35 
         delay:0 
         options:UIViewAnimationCurveEaseOut 
         animations:^{ uis.value = 0.0f; } 
         completion:NULL];
    }
}

@end
