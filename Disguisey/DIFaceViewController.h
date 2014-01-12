//
//  DIFirstViewController.h
//  Disguisey
//
//  Created by Ravi Shanker on 11/01/2014.
//  Copyright (c) 2014 iKite. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DIDisguise.h"
#import "DIFaceImageView.h"
#import "DIDisguiseElement.h"
#import "DIAppDelegate.h"


@interface DIFaceViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet DIFaceImageView *faceImage;
@property (strong, nonatomic)DIDisguise *disguise;

- (IBAction)pickFace:(id)sender;

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info;

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker;

- (void)faceWasTouched:(CGPoint)point;
- (void)drawDisguiseElement:(DIDisguiseElement *)el startingPoint:(CGPoint)p;

@end
