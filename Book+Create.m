//
//  Book+Create.m
//  TestOS7a
//
//  Created by Developer on 12/24/13.
//  Copyright (c) 2013 VT. All rights reserved.
//

#import "Book+Create.h"
#import "Author+Create.h"

@implementation Book (Create)


+ (Book*)bookWithDictionary:(NSDictionary*)defs inManagedObjectContext:(NSManagedObjectContext*)context {
    Book* book=nil;
    NSFetchRequest* request = [NSFetchRequest fetchRequestWithEntityName:@"Book"];
    // look for title and author
    request.predicate = [NSPredicate predicateWithFormat:@"title = %@ and whoWrote.name = %@", [defs valueForKey:@"title"], [defs valueForKey:@"authorName"]];
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES];
    request.sortDescriptors = [NSArray arrayWithObject:sortDescriptor ];
    
    NSError* error = nil;
    NSArray*books = [context executeFetchRequest:request error:&error];
    
    if (!books || [books count]>1) {
        //  handle error
    } else if (![books count]) {
        book = [NSEntityDescription insertNewObjectForEntityForName:@"Book" inManagedObjectContext:context];
        book.title=[defs valueForKey:@"title"];
        book.year=[defs valueForKey:@"year"];
        book.whoWrote = [Author authorWithName:[defs valueForKey:@"authorName"] inManagedObjectContext:context];
        if (![context save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }else { //  one object only : the ONE
        book = [books lastObject];
    }
    NSLog(@"%@ by %@", book.title, book.whoWrote.name);
    return book;
}



@end
