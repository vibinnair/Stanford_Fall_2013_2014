//
//  Event.h
//  Olympics
//
//  Created by Vibin Nair on 25/06/14.
//  Copyright (c) 2014 Vibin Nair. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Round, Team;

@interface Event : NSManagedObject

@property (nonatomic, retain) NSString * key;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSSet *teams;
@property (nonatomic, retain) NSSet *rounds;
@end

@interface Event (CoreDataGeneratedAccessors)

- (void)addTeamsObject:(Team *)value;
- (void)removeTeamsObject:(Team *)value;
- (void)addTeams:(NSSet *)values;
- (void)removeTeams:(NSSet *)values;

- (void)addRoundsObject:(Round *)value;
- (void)removeRoundsObject:(Round *)value;
- (void)addRounds:(NSSet *)values;
- (void)removeRounds:(NSSet *)values;

@end
