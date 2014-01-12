//
//  DIDisguise.h
//  Disguisey
//
//  Created by Ravi Shanker on 11/01/2014.
//  Copyright (c) 2014 iKite. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DIDisguiseElement.h"

@interface DIDisguise : NSObject

@property (strong, nonatomic)NSMutableArray *elements;
@property (strong, nonatomic)UIImage *lastChosenImage;

- (void)clear;
- (BOOL)wasElementChosen;
- (DIDisguiseElement *)placeChosenElement:(CGPoint)point;


@end
