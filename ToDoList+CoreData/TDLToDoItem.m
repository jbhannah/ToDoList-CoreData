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
@dynamic completionDate;
@dynamic creationDate;

- (void)awakeFromInsert
{
    [super awakeFromInsert];

    [self setPrimitiveValue:NO forKey:@"completed"];
}

- (void)willSave
{
    if (self.creationDate == nil) {
        self.creationDate = [[NSDate alloc] init];
    }
}

- (void)toggleCompletion
{
    self.completed = [[NSNumber alloc] initWithBool:!self.completed];
    
    if (self.completed) {
        self.completionDate = [[NSDate alloc] init];
    } else {
        self.completionDate = nil;
    }
}

@end
