//
//  MTAppDelegate.h
//  LockExample
//
//  Created by Chad Johnston on 6/6/12.
//  Copyright (c) 2012 Megatome Technologies LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MTViewController;

@interface MTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MTViewController *viewController;

@end
