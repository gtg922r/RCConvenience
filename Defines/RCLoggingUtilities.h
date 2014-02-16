//
//  RCLoggingUtilities.h
//  TeleTracker
//
//  Created by Ryan Cash on 3/3/13.
//  Copyright (c) 2013 Ryan Cash. All rights reserved.
//
//#warning add #ifdef DEBUG

#ifndef TeleTracker_RCLoggingUtilities_h
#define TeleTracker_RCLoggingUtilities_h
#define RC_LOGGING_DEBUG


#ifdef DEBUG

#define RCLog(...) NSLog(@"%s %@", __PRETTY_FUNCTION__, [NSString stringWithFormat:__VA_ARGS__])
#define RC_METHOD_LOG NSLog(@"%@ %s: %@", NSStringFromSelector(_cmd), __FILE__, self)
#define RC_MESSAGE_LOG(message) NSLog(@"%@ (%@ %s: %@)", message, NSStringFromSelector(_cmd), __FILE__, self)
#define RC_ERROR_LOG(error) NSLog(@"[%@ %@] %@ (%@)", NSStringFromClass([self class]), NSStringFromSelector(_cmd), [error localizedDescription], [error localizedFailureReason])

#define RC_RECT_PRINT(printRect,...) NSLog(@"%@ | Rect: W: %f H:%f x:%f y:%f", [NSString stringWithFormat:__VA_ARGS__],printRect.size.width, printRect.size.height, printRect.origin.x, printRect.origin.y)


#else

#define RCLog(...) {}
#define RC_METHOD_LOG {}
#define RC_MESSAGE_LOG(message) {}
#define RC_ERROR_LOG(error) {}
#endif


#endif
