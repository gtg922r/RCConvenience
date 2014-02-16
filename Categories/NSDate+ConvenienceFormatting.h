//
//  NSDate+ConvenienceFormatting.h
//  TeleTracker
//
//  Created by Ryan Cash on 3/19/13.
//  Copyright (c) 2013 Ryan Cash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (ConvenienceFormatting)

- (NSString *)RC_stringWithDayOfWeekAndDate;
- (NSString *)RC_stringWithShortDate;
- (NSString *)RC_stringWithDayOfWeek;
- (NSString *)RC_stringWithMDYYDate;
- (NSString *)RC_stringWithShortDayOfWeek;
- (NSString *)RC_stringWithDayOfWeekAndDateWithYear;

+ (NSDate *)dateWithTimeFrom:(NSDate *)time andDateFrom:(NSDate *)date;
@end
