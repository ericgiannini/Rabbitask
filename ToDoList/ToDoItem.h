//
//  ToDoItem.h
//  ToDoList
//
//  Created by Eric Giannini on 5/21/15.
//  Copyright (c) 2015 Codebases. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
