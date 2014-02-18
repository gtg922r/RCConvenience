//
//  NSDate+ConvenienceFormatting.m
//  TeleTracker
//
//  Created by Ryan Cash on 3/19/13.
//  Copyright (c) 2013 Ryan Cash. All rights reserved.
//

#import "NSDate+ConvenienceFormatting.h"

@implementation NSDate (ConvenienceFormatting)

+ (NSDate *)dateWithTimeFrom:(NSDate *)time andDateFrom:(NSDate *)date{
    // Code snippet from: http://stackoverflow.com/questions/5979462/problem-combining-a-date-and-a-time-into-a-single-nsdate
    // Author: MusiGenesis
    
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    unsigned unitFlagsDate = NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit;
    NSDateComponents *dateComponents = [gregorian components:unitFlagsDate fromDate:date];
    unsigned unitFlagsTime = NSHourCalendarUnit | NSMinuteCalendarUnit |  NSSecondCalendarUnit;
    NSDateComponents *timeComponents = [gregorian components:unitFlagsTime fromDate:time];
    
    [dateComponents setSecond:[timeComponents second]];
    [dateComponents setHour:[timeComponents hour]];
    [dateComponents setMinute:[timeComponents minute]];
    
    NSDate *combDate = [gregorian dateFromComponents:dateComponents];
    
    return combDate;
    
}

- (NSString *)RC_stringWithDayOfWeekAndDate{
    
    static NSDateFormatter *dateFormatWithDayOfWeekAndDate = nil;
    
    if(dateFormatWithDayOfWeekAndDate ==nil){
        dateFormatWithDayOfWeekAndDate = [[NSDateFormatter alloc] init];
        dateFormatWithDayOfWeekAndDate.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        dateFormatWithDayOfWeekAndDate.dateFormat = @"EEEE', 'MMM' 'dd' 'yyy";
        dateFormatWithDayOfWeekAndDate.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    }
    
    return [dateFormatWithDayOfWeekAndDate stringFromDate:self];
    
}

- (NSString *)RC_stringWithDayOfWeekAndDateWithYear{
    
    static NSDateFormatter *dateFormatWithDayOfWeekAndDate = nil;
    
    if(dateFormatWithDayOfWeekAndDate ==nil){
        dateFormatWithDayOfWeekAndDate = [[NSDateFormatter alloc] init];
        dateFormatWithDayOfWeekAndDate.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        dateFormatWithDayOfWeekAndDate.dateFormat = @"EEEE', 'MMM' 'dd ";
        dateFormatWithDayOfWeekAndDate.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    }
    
    return [dateFormatWithDayOfWeekAndDate stringFromDate:self];
    
}

- (NSString *)RC_stringWithShortDayOfWeekAndDateWithYear{
    
    static NSDateFormatter *dateFormatWithDayOfWeekAndDate = nil;
    
    if(dateFormatWithDayOfWeekAndDate ==nil){
        dateFormatWithDayOfWeekAndDate = [[NSDateFormatter alloc] init];
        dateFormatWithDayOfWeekAndDate.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        dateFormatWithDayOfWeekAndDate.dateFormat = @"EEE', 'MMM' 'dd ";
        dateFormatWithDayOfWeekAndDate.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    }
    
    return [dateFormatWithDayOfWeekAndDate stringFromDate:self];
    
}

- (NSString *)RC_stringWithShortDate{
    
    static NSDateFormatter *dateFormatWithDayOfWeekAndDate = nil;
    
    if(dateFormatWithDayOfWeekAndDate ==nil){
        dateFormatWithDayOfWeekAndDate = [[NSDateFormatter alloc] init];
        dateFormatWithDayOfWeekAndDate.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        dateFormatWithDayOfWeekAndDate.dateFormat = @"M'/'d";
        dateFormatWithDayOfWeekAndDate.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    }
    
    return [dateFormatWithDayOfWeekAndDate stringFromDate:self];
    
}

- (NSString *)RC_stringWithMDYYDate{
    
    static NSDateFormatter *dateFormatWithDayOfWeekAndDate = nil;
    
    if(dateFormatWithDayOfWeekAndDate ==nil){
        dateFormatWithDayOfWeekAndDate = [[NSDateFormatter alloc] init];
        dateFormatWithDayOfWeekAndDate.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        dateFormatWithDayOfWeekAndDate.dateFormat = @"M'/'d'/'yy";
        dateFormatWithDayOfWeekAndDate.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    }
    
    return [dateFormatWithDayOfWeekAndDate stringFromDate:self];
    
}

- (NSString *)RC_stringWithDayOfWeek{
    
    static NSDateFormatter *dateFormatWithDayOfWeek = nil;
    
    if(dateFormatWithDayOfWeek ==nil){
        dateFormatWithDayOfWeek = [[NSDateFormatter alloc] init];
        dateFormatWithDayOfWeek.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        dateFormatWithDayOfWeek.dateFormat = @"EEEE";
        dateFormatWithDayOfWeek.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    }
    
    return [dateFormatWithDayOfWeek stringFromDate:self];
    
}

- (NSString *)RC_stringWithShortDayOfWeek{
    
    static NSDateFormatter *dateFormatWithDayOfWeek = nil;
    
    if(dateFormatWithDayOfWeek ==nil){
        dateFormatWithDayOfWeek = [[NSDateFormatter alloc] init];
        dateFormatWithDayOfWeek.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        dateFormatWithDayOfWeek.dateFormat = @"EEE";
        dateFormatWithDayOfWeek.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    }
    
    return [dateFormatWithDayOfWeek stringFromDate:self];
    
}

@end
