//
//  VTDetailViewController.h
//  TestCoreData
//
//  Created by Developer on 12/27/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VTDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
