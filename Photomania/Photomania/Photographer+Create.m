//
//  Photographer+Create.m
//  Photomania
//
//  Created by Vibin Nair on 22/06/14.
//  Copyright (c) 2014 Vibin Nair. All rights reserved.
//

#import "Photographer+Create.h"

@implementation Photographer (Create)
    +(Photographer *) photographerWithName:(NSString *)name
                    inManagedObjectContext:(NSManagedObjectContext *)context
{
    Photographer *photographer = nil;
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Photographer"];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = %@", name];
    
    NSError *error;
    NSArray *matches = [context executeFetchRequest:request error:&error];
    
    if (!matches || error || [matches count] > 1) {
        // handle error;
    }
    else if ([matches count]) {
        photographer = matches.firstObject;
    }
    else {
        photographer = [NSEntityDescription insertNewObjectForEntityForName:@"Photographer"
                                                     inManagedObjectContext:context];
        photographer.name = name;
    }
    
    return photographer;
}
@end
