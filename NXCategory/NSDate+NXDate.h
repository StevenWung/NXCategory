//
//  NSDate+NXDate.h
//  NXCategory
//
//  Created by Steven Wang on 12/22/14.
//  Copyright (c) 2014 MI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+NXDate.h"

@interface NSDate (NXDate)

- (NSDate * )initWithNormalString:(NSString *)timeString;
- (NSString *)dateTimeAgo;

@end
