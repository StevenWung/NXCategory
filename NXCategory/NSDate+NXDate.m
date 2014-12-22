//
//  NSDate+NXDate.m
//  NXCategory
//
//  Created by Steven Wang on 12/22/14.
//  Copyright (c) 2014 MI. All rights reserved.
//

#import "NXCategory.h"

@implementation NSDate (NXDate)

#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
-(NSDate * )initWithNormalString:(NSString *)timeString{
    
    NSTimeZone * gmt = [NSTimeZone defaultTimeZone];
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    [formatter setTimeZone: gmt];
    NSDate * date = [formatter dateFromString:timeString];
    return date;
}

- (NSString *)dateTimeAgo
{
    NSCalendar *calendar         = [NSCalendar currentCalendar];
    NSDate * now                 = [NSDate date];
    NSDateComponents *components = [calendar components:
                                    NSYearCalendarUnit|
                                    NSMonthCalendarUnit|
                                    NSWeekCalendarUnit|
                                    NSDayCalendarUnit|
                                    NSHourCalendarUnit|
                                    NSMinuteCalendarUnit|
                                    NSSecondCalendarUnit
                                               fromDate:self
                                                 toDate:now
                                                options:0];
    
    if (components.year >= 1)
    {
        return [NSString stringWithFormat:nxLangTimeDiff_X_YearAgo, components.year];
    }
    else if (components.month >= 1)
    {
        return [NSString stringWithFormat:nxLangTimeDiff_X_MonthAgo, components.month];
    }
    else if (components.day >= 1)
    {
        return [NSString stringWithFormat:nxLangTimeDiff_X_DayAgo,  components.day];
    }
    else if (components.hour >= 1)
    {
        return [NSString stringWithFormat:nxLangTimeDiff_X_HourAgo,  components.hour];
    }
    else if (components.minute >= 1)
    {
        return [NSString stringWithFormat:nxLangTimeDiff_X_MinuteAgo,  components.minute];
    }
    else if (components.second > 5)
    {
        return [NSString stringWithFormat:nxLangTimeDiff_X_SecondAgo,  components.second];
    }else
    {
        return [NSString stringWithFormat:nxLangTimeDiff_JustNow];
    }
    
    return @"1";
}


@end
