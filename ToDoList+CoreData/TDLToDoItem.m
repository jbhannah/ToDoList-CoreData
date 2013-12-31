//
//  TDLToDoItem.m
//  ToDoList+CoreData
//
//  Created by Jesse B. Hannah on 2013-12-30.
//  Copyright (c) 2013 Jesse B. Hannah. All rights reserved.
//

#import "TDLToDoItem.h"


@implementation TDLToDoItem

@dynamic itemName;
@dynamic completed;
@dynamic creationDate;

- (id)initWithEntity:(NSEntityDescription *)entity insertIntoManagedObjectContext:(NSManagedObjectContext *)context
{
    self = [super initWithEntity:entity insertIntoManagedObjectContext:context];

    if (self != nil) {
        self.creationDate = [[NSDate alloc] init];
        self.completed = NO;
    }

    return self;
}

@end
