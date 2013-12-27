//
//  VTBookViewController.m
//  TestOS7a
//
//  Created by Developer on 12/25/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import "VTBookViewController.h"

@interface VTBookViewController ()

@end

@implementation VTBookViewController

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
        NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
        [f setNumberStyle:NSNumberFormatterNoStyle];
        NSNumber * myNumber = [f numberFromString:self.yearField.text];
        [self.delegate addObjectController:self didUpdate:[NSDictionary dictionaryWithObjectsAndKeys:
                                                           self.titleField.text, @"title",
                                                           myNumber, @"year", nil ]];
    }
    //  close
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
