//
//  TDLToDoItem.h
//  ToDoList+CoreData
//
//  Created by Jesse B. Hannah on 2013-12-30.
//  Copyright (c) 2013 Jesse B. Hannah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface TDLToDoItem : NSManagedObject

@property (nonatomic, retain) NSString * itemName;
@property (nonatomic, retain) NSNumber * completed;
@property (nonatomic, retain) NSDate * completionDate;
@property (nonatomic, retain) NSDate * creationDate;

@end
