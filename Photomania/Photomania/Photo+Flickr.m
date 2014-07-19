//
//  Photo+Flickr.m
//  Photomania
//
//  Created by Vibin Nair on 22/06/14.
//  Copyright (c) 2014 Vibin Nair. All rights reserved.
//

#import "Photo+Flickr.h"
#import "FlickrFetcher.h"
#import "Photographer+Create.h"

@implementation Photo (Flickr)

+ (Photo *) photoWithFlickrInfo:(NSDictionary *)photoDictionary
             intoManagedObjectContext:(NSManagedObjectContext *)context
{
    Photo *photo = nil;
    
    NSString *unique = photoDictionary[FLICKR_PHOTO_ID];
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Photo"];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"unique = %@", unique];
   
    NSError *error;
    NSArray *matches = [context executeFetchRequest:request error:&error];
    
    // If matches is nil OR error is not nil OR matches is not unique (i.e more than one);
    if(!matches || error || [matches count] > 1) {
        // show error;
    }
    else if ([matches count]) { // If matches is found;
        photo = matches.firstObject;
    }
    else { // If no matches is found, create one;
        Photo *photo = [NSEntityDescription insertNewObjectForEntityForName:@"Photo"
                                                     inManagedObjectContext:context];
        photo.unique = unique;
        photo.title = [photoDictionary valueForKey:FLICKR_PHOTO_TITLE];
        photo.subtitle = [photoDictionary valueForKey:FLICKR_PHOTO_DESCRIPTION];
        photo.imageUrl = [[FlickrFetcher URLforPhoto:photoDictionary format:FlickrPhotoFormatLarge] absoluteString];
        
        NSString *photographerName = [photoDictionary valueForKey:FLICKR_PHOTO_OWNER];
        photo.whoTook = [Photographer photographerWithName:photographerName
                                    inManagedObjectContext:context];
    }
    
    return photo;
}


+ (void) loadPhotosFromFlickrArray:(NSArray *)photos intoManagedObjectContext:(NSManagedObjectContext *)context
{
    for (NSDictionary *photo in photos) {
        [self photoWithFlickrInfo:photo intoManagedObjectContext:context];
    }
}

@end
