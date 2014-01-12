//
//  DISecondViewController.m
//  Disguisey
//
//  Created by Ravi Shanker on 11/01/2014.
//  Copyright (c) 2014 iKite. All rights reserved.
//

#import "DIDisguiseViewController.h"

@interface DIDisguiseViewController ()

@end

@implementation DIDisguiseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    DIAppDelegate *app = (DIAppDelegate *)[[UIApplication sharedApplication] delegate];
    self.disguise = app.disguise;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)disguiseElementChosen:(id)sender {
    self.disguise.lastChosenImage = ((UIButton*)sender).currentImage;
    self.tabBarController.selectedIndex = 0;
}


@end
