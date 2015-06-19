//
//  LSAUtils.m
//  LSAEvents
//
//  Created by Alberto Lagos on 19-06-15.
//  Copyright (c) 2015 Alberto Lagos. All rights reserved.
//

#import "LSAUtils.h"

@implementation LSAUtils

+ (NSMutableArray *)randomEvents:(int)aQuantity
{
    NSMutableArray *ary = [NSMutableArray array];
    
    for (int i = 0; i < aQuantity; i++) {
        NSString *name = [MBFakerName name];
        NSString *description = [MBFakerLorem sentence];
        
        NSDate *startDate = [NSDate dateWithTimeInterval:(rand() % (3600 * 24 * 60)) sinceDate:[NSDate date]];
        LSAEvent *event       = [LSAEvent createWithTitle:name andDescription:description];
        event.eventStartDate  = startDate;
        
        [ary addObject:event];
    }
    
    return  ary;
}

@end
