//
//  Photographer+Create.h
//  Photomania
//
//  Created by Vibin Nair on 22/06/14.
//  Copyright (c) 2014 Vibin Nair. All rights reserved.
//

#import "Photographer.h"

@interface Photographer (Create)
+ (Photographer *) photographerWithName:(NSString *)name
                 inManagedObjectContext:(NSManagedObjectContext *)context;
@end
