//
//  NSArray+IndexPath.m
//  TeleTracker
//
//  Created by Ryan Cash on 5/20/13.
//  Copyright (c) 2013 Ryan Cash. All rights reserved.
//

#import "NSArray+IndexPath.h"

@implementation NSArray (IndexPath)

-(id)objectAtIndexPath:(NSIndexPath *)indexPath {
    
    if ([[self objectAtIndex:indexPath.section] isKindOfClass:[NSArray class]]) {

        return [[self objectAtIndex:indexPath.section] objectAtIndex:indexPath.row]; // for now only handle indexpath 2 deep
    } else {
        return nil;
    }
    
}

@end
