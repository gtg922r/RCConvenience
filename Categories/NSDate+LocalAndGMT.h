//
//  NSDate+LocalAndGMT.h
//  TeleTracker
//
//  Created by Ryan Cash on 1/24/13.
//  Copyright (c) 2013 Ryan Cash. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SECONDS_IN_ONE_DAY (24.0*3600.0)

@interface NSDate (LocalAndGMT)

- (NSDate *)dateForStartOfLocalDay;
+ (NSDate *)startOfLocalDayInGMT;
+ (NSDate *)startOfLocalDayInGMTWithDate:(NSDate *)date;
+ (NSDate *)dateWithLocalTimeFrom:(NSDate *)localTime andGMTDateFrom:(NSDate *)gmtDate;

@end
