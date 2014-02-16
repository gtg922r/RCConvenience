//
//  NSDate+LocalAndGMT.m
//  TeleTracker
//
//  Created by Ryan Cash on 1/24/13.
//  Copyright (c) 2013 Ryan Cash. All rights reserved.
//

#import "NSDate+LocalAndGMT.h"

@implementation NSDate (LocalAndGMT)

- (NSDate *)dateForStartOfLocalDay {
    return [NSDate startOfLocalDayInGMTWithDate:self];
}

+(NSDate *)startOfLocalDayInGMT {
    
    return [self startOfLocalDayInGMTWithDate:[NSDate date]];
    
}

+(NSDate *)startOfLocalDayInGMTWithDate:(NSDate *)date {
    NSCalendar *localCalendar = [NSCalendar currentCalendar];
    NSCalendar *gmtCalendar = [NSCalendar currentCalendar];
    gmtCalendar.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
    unsigned unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit;
    
    NSDateComponents *dateComponents = [localCalendar components:unitFlags fromDate:date];
    NSDate *gmtCalendarDate = [gmtCalendar dateFromComponents:dateComponents];
    
    return gmtCalendarDate;
    
}

+ (NSDate *)dateWithLocalTimeFrom:(NSDate *)localTime andGMTDateFrom:(NSDate *)gmtDate {
    // Modified Code snippet from: http://stackoverflow.com/questions/5979462/problem-combining-a-date-and-a-time-into-a-single-nsdate
    // Author: MusiGenesis
    
    NSCalendar *localCalendar = [NSCalendar currentCalendar];
    NSCalendar *gmtCalendar = [NSCalendar currentCalendar];
    gmtCalendar.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
     
    unsigned unitFlagsDate = NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit;
    
    NSDateComponents *dateComponents = [gmtCalendar components:unitFlagsDate fromDate:gmtDate];
    unsigned unitFlagsTime = NSHourCalendarUnit | NSMinuteCalendarUnit |  NSSecondCalendarUnit;
    NSDateComponents *timeComponents = [localCalendar components:unitFlagsTime fromDate:localTime];
    
    [dateComponents setSecond:[timeComponents second]];
    [dateComponents setHour:[timeComponents hour]];
    [dateComponents setMinute:[timeComponents minute]];
    
    NSDate *combDate = [localCalendar dateFromComponents:dateComponents];
    
    return combDate;
    
    
}

@end
