//
//  Team.h
//  Olympics
//
//  Created by Vibin Nair on 25/06/14.
//  Copyright (c) 2014 Vibin Nair. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Event;

@interface Team : NSManagedObject

@property (nonatomic, retain) NSString * code;
@property (nonatomic, retain) NSString * key;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) Event *whichEvent;

@end
