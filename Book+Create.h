//
//  Book+Create.h
//  TestOS7a
//
//  Created by Developer on 12/24/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import "Book.h"

@interface Book (Create)
+ (Book*)bookWithDictionary:(NSDictionary*)defs inManagedObjectContext:(NSManagedObjectContext*)context ;

@end
