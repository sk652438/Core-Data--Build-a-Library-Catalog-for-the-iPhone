//
//  VTDetailViewController.h
//  TestCoreData
//
//  Created by Developer on 12/27/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VTAddObjectDelegate.h"

@interface VTDetailViewController : UITableViewController <UISplitViewControllerDelegate, NSFetchedResultsControllerDelegate, VTAddObjectDelegate>

@property (strong, nonatomic) id detailItem;

@end
