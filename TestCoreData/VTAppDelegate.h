//
//  VTAppDelegate.h
//  TestCoreData
//
//  Created by Developer on 12/27/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
