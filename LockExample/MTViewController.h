//
//  MTViewController.h
//  LockExample
//
//  Created by Chad Johnston on 6/6/12.
//  Copyright (c) 2012 Megatome Technologies LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTLockViewController.h"

@interface MTViewController : UIViewController

@property (strong, nonatomic) MTLockViewController *lockController;
- (IBAction)lockScreen:(id)sender;

@end
