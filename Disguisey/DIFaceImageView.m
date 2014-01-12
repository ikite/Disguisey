//
//  DIFaceImageView.m
//  Disguisey
//
//  Created by Ravi Shanker on 11/01/2014.
//  Copyright (c) 2014 iKite. All rights reserved.
//

#import "DIFaceImageView.h"
#import "DIFaceViewController.h"

@implementation DIFaceImageView

//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        // Initialization code
//    }
//    return self;
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSSet *allTouches = [event allTouches];
    
    // Get first touch
    UITouch *touch = [[allTouches allObjects] objectAtIndex:0];
    CGPoint p = [touch locationInView:self];
    
    // Tell controller face was touched
    [self.faceViewController faceWasTouched:p];
}

@end
