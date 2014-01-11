//
//  DIFaceImageView.h
//  Disguisey
//
//  Created by Ravi Shanker on 11/01/2014.
//  Copyright (c) 2014 iKite. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DIFaceViewController;

@interface DIFaceImageView : UIImageView

@property (weak, nonatomic)DIFaceViewController *faceViewController;

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;

@end
