//
//  Photo+Flickr.h
//  Photomania
//
//  Created by Vibin Nair on 22/06/14.
//  Copyright (c) 2014 Vibin Nair. All rights reserved.
//

#import "Photo.h"

@interface Photo (Flickr)
+ (Photo *) photoWithFlickrInfo:(NSDictionary *)photoDictionary
         inManagedObjectContext:(NSManagedObjectContext *)context;

+ (void) loadPhotosFromFlickrArray:(NSArray *)photos // of flickr NSDictionary;
            intoManagedObjectContext:(NSManagedObjectContext *)context;
@end
