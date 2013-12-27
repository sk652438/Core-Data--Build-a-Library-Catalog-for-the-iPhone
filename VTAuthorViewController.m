//
//  VTAuthorViewController.m
//  TestOS7a
//
//  Created by Developer on 12/25/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import "VTAuthorViewController.h"

@interface VTAuthorViewController ()

@end

@implementation VTAuthorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickButton:(id)sender {
    UIBarButtonItem* btn = (UIBarButtonItem*) sender;
    if (btn.style == UIBarButtonItemStyleDone) {
        //  pass information back
        NSString *name = [NSString stringWithFormat:@"%@, %@", self.lastName.text, self.firstName.text];
        [self.delegate addObjectController:self didUpdate:[NSDictionary dictionaryWithObject:name forKey:@"name"]];
    }
    //  close
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
