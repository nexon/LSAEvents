//
//  LSAEvent.m
//  LSAEvents
//
//  Created by Alberto Lagos on 19-06-15.
//  Copyright (c) 2015 Alberto Lagos. All rights reserved.
//

#import "LSAEvent.h"

@implementation LSAEvent

+ (instancetype)createWithTitle:(NSString *)aTitle andDescription:(NSString *)aDescription
{
    LSAEvent *_event = [[LSAEvent alloc] init];
    
    _event.eventTitle       = aTitle;
    _event.eventDescription = aDescription;
    
    return _event;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ - %@", self.eventTitle, self.eventStartDate];
}
@end
