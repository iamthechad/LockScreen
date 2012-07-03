//
//  MTViewController.h
//  LockExample
//
//  Created by Chad Johnston on 6/6/12.
//  Copyright (c) 2012 Megatome Technologies LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MTViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *lockScreenView;
@property (strong, nonatomic) IBOutlet UISlider *lockScreenSlider;

- (IBAction)lockScreen:(id)sender;
- (IBAction)unlockSlider:(id)sender;


@end
