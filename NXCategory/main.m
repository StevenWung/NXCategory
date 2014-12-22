//
//  main.m
//  NXCategory
//
//  Created by Steven Wang on 12/22/14.
//  Copyright (c) 2014 MI. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NXCategory.h"
#import "NSDate+NXDate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //ns date
        NSDate * date = [[NSDate alloc]initWithNormalString:@"2014-12-22 12:10:10"];
        NSString * timeDiff = [date dateTimeAgo];
        NSLog(@"%@", timeDiff);
        
    }
    return 0;
}
