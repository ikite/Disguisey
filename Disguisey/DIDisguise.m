//
//  DIDisguise.m
//  Disguisey
//
//  Created by Ravi Shanker on 11/01/2014.
//  Copyright (c) 2014 iKite. All rights reserved.
//

#import "DIDisguise.h"

@implementation DIDisguise

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.elements = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)clear
{
    [self.elements removeAllObjects];
}

- (BOOL)wasElementChosen
{
    return self.lastChosenImage != nil;
}

- (DIDisguiseElement *)placeChosenElement:(CGPoint)point
{
    if (self.wasElementChosen) {
        DIDisguiseElement *element = [[DIDisguiseElement alloc] initWithImage:self.lastChosenImage atPoint:point];
        [self.elements addObject:element];
        
        self.lastChosenImage = nil;
        return element;
    }
    
    return nil;
}

@end
