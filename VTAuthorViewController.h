//
//  VTAuthorViewController.h
//  TestOS7a
//
//  Created by Developer on 12/25/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VTAddObjectDelegate.h"

@interface VTAuthorViewController : UIViewController

@property (strong, nonatomic) id<VTAddObjectDelegate> delegate;

- (IBAction)clickButton:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;

@end
