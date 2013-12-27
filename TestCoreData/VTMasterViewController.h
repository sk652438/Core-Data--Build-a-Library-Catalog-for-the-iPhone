//
//  VTMasterViewController.h
//  TestCoreData
//
//  Created by Developer on 12/27/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VTDetailViewController;

#import <CoreData/CoreData.h>
#import "VTAddObjectDelegate.h"

@interface VTMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate, VTAddObjectDelegate>

@property (strong, nonatomic) VTDetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
