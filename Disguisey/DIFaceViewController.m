//
//  DIFirstViewController.m
//  Disguisey
//
//  Created by Ravi Shanker on 11/01/2014.
//  Copyright (c) 2014 iKite. All rights reserved.
//

#import "DIFaceViewController.h"

@interface DIFaceViewController ()

@end

@implementation DIFaceViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.faceImage.faceViewController = self;
    
    DIAppDelegate *app = (DIAppDelegate *)[[UIApplication sharedApplication] delegate];
    self.disguise = app.disguise;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pickFace:(id)sender {
    // create picker and configure it
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    // Add it
    [self presentViewController:picker animated:YES completion:nil];
}

- (void)releasePicker:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (UIImage *)resizeFaceImage:(UIImage *)faceImage
{
    CGFloat vw = self.faceImage.frame.size.width;
    CGFloat vh = self.faceImage.frame.size.height;
    
    // set image's final size
    CGSize size = CGSizeMake(vw, vh);
    UIGraphicsBeginImageContext(size);
    
    CGFloat fw = faceImage.size.width, fh = faceImage.size.height;
    CGFloat ratio = vh / fh; // fit height
    CGFloat newWidth = fw * ratio;
    CGFloat newHeight = fh * ratio;
    
    // offset so it is centered
    [faceImage drawInRect:CGRectMake((vw - (newWidth))/2, 0, newWidth, newHeight)];
    
    UIImage *newFaceImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newFaceImage;
}

- (void)faceWasTouched:(CGPoint)point
{
    if ([self.disguise wasElementChosen]) {
        DIDisguiseElement *el = [self.disguise placeChosenElement:point];
        [self drawDisguiseElement:el startingPoint:point];
    }
}

- (void)drawDisguiseElement:(DIDisguiseElement *)el startingPoint:(CGPoint)p
{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:el.image];
    [self.faceImage addSubview:imageView];
    imageView.bounds = CGRectMake(0, 0, el.image.size.width, el.image.size.height);
    imageView.center = el.point;
}

#pragma mark UIImagePickerControllerDelegate methods

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    // use chosen photo
    UIImage *faceImage = [info objectForKey:UIImagePickerControllerEditedImage];
    
    // resize image to fit
    faceImage = [self resizeFaceImage:faceImage];
    
    self.faceImage.image = faceImage;
    
    [self releasePicker:picker];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self releasePicker:picker];
}

@end
