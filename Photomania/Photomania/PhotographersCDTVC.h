//
//  PhotographersCDTVC.h
//  Photomania
//
//  Created by Vibin Nair on 23/06/14.
//  Copyright (c) 2014 Vibin Nair. All rights reserved.
//

// Its only purpose is to give the list of all photographers available in the managedObjectContext;

#import "CoreDataTableViewController.h"

@interface PhotographersCDTVC : CoreDataTableViewController
    @property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@end
