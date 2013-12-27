//
//  VTAddObjectDelegate.h
//  TestCoreData
//
//  Created by Developer on 12/27/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VTAddObjectDelegate <NSObject>

- (void)addObjectController:(id)addObjectController didUpdate:(NSDictionary*)dictionary;

@end
