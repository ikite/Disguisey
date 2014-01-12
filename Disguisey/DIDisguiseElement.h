//
//  DIDisguiseElement.h
//  Disguisey
//
//  Created by Ravi Shanker on 11/01/2014.
//  Copyright (c) 2014 iKite. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DIDisguiseElement : NSObject

@property(strong, nonatomic)UIImage *image;
@property(nonatomic)CGPoint point;

- (id)initWithImage:(UIImage *)image atPoint:(CGPoint)point;

@end
