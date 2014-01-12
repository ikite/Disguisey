//
//  DIAppDelegate.h
//  Disguisey
//
//  Created by Ravi Shanker on 11/01/2014.
//  Copyright (c) 2014 iKite. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DIDisguise.h"

@interface DIAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) DIDisguise *disguise;

@end
