//
//  DIDisguiseElement.m
//  Disguisey
//
//  Created by Ravi Shanker on 11/01/2014.
//  Copyright (c) 2014 iKite. All rights reserved.
//

#import "DIDisguiseElement.h"

@implementation DIDisguiseElement

- (id)initWithImage:(UIImage *)image atPoint:(CGPoint)point
{
    self = [super init];
    if (self) {
        self.image = image;
        self.point = point;
    }
    
    return self;
}

@end
