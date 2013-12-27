//
//  Book+Create.h
//  TestCoreData
//
//  Created by Developer on 12/27/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import "Book.h"

@interface Book (Create)
+ (Book*)bookWithDictionary:(NSDictionary*)defs inManagedObjectContext:(NSManagedObjectContext*)context ;
@end
