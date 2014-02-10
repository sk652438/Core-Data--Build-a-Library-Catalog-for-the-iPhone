//
//  Author+Create.m
//  TestCoreData
//
//  Created by Developer on 12/28/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import "Author+Create.h"

@implementation Author (Create)

+ (Author*)authorWithName:(NSString*)name inManagedObjectContext:(NSManagedObjectContext*)context {
    
    Author* author = nil;
    
    NSFetchRequest* request = [NSFetchRequest fetchRequestWithEntityName:@"Author"];
    request.predicate = [NSPredicate predicateWithFormat:@"name = %@", name];
    request.sortDescriptors = [NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES]];
    
    NSError* error = nil;
    NSArray *authors = [context executeFetchRequest:request error:&error];
    
    if(!authors || [authors count] > 1) {
        // handle error
    } else if ([authors count] == 0) {
        //  insert new object
        author = [NSEntityDescription insertNewObjectForEntityForName:@"Author" inManagedObjectContext:context];
        author.name = name;
        [context save:&error];
    } else {
        // object already there
        author = [authors lastObject];
    }
    
    return author;
}

@end
