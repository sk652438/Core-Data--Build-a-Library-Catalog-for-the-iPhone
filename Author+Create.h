//
//  Author+Create.h
//  TestCoreData
//
//  Created by Developer on 12/28/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import "Author.h"

@interface Author (Create)
+ (Author*)authorWithName:(NSString*)name inManagedObjectContext:(NSManagedObjectContext*)context ;
@end
