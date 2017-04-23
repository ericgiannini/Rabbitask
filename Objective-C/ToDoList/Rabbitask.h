//
//  Rabbitask.h
//  Rabbitask
//
//  Created by Eric Giannini on 5/21/15.
//  Copyright (c) 2015 Codebases. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rabbitask : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
