//
//  Round.h
//  Olympics
//
//  Created by Vibin Nair on 25/06/14.
//  Copyright (c) 2014 Vibin Nair. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Event;

@interface Round : NSManagedObject

@property (nonatomic, retain) NSString * endDate;
@property (nonatomic, retain) NSString * position;
@property (nonatomic, retain) NSString * startDate;
@property (nonatomic, retain) NSNumber * title;
@property (nonatomic, retain) Event *whichEvent;

@end
