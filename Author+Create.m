//
//  Author+Create.m
//  TestCoreData
//
//  Created by Developer on 12/27/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import "Author+Create.h"

@implementation Author (Create)

+(Author*) authorWithName:(NSString*)name inManagedObjectContext:(NSManagedObjectContext*)context {
    Author* author = nil;
    NSFetchRequest* request = [NSFetchRequest fetchRequestWithEntityName:@"Author"];
    request.predicate = [NSPredicate predicateWithFormat:@"name = %@", name];
    request.sortDescriptors = [NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES]];
    
    NSError* error = nil;
    NSArray* authors = [context executeFetchRequest:request error:&error];
    
    if(!authors || [authors count]> 1) {
        //handle error
    } else if (![authors count]) {
        author = [NSEntityDescription insertNewObjectForEntityForName:@"Author" inManagedObjectContext:context];
        author.name = name;
        if (![context save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
        }
    } else {
        author = [authors lastObject];
    }
    
    return author;
}



@end
