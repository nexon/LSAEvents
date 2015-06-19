//
//  LSAEvent.h
//  LSAEvents
//
//  Created by Alberto Lagos on 19-06-15.
//  Copyright (c) 2015 Alberto Lagos. All rights reserved.
//

#include <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface LSAEvent : NSObject

+ (instancetype)createWithTitle:(NSString *)aTitle andDescription:(NSString *)aDescription;

@property (strong,nonatomic) NSString *eventTitle;
@property (strong,nonatomic) NSString *eventDescription;
@property (strong,nonatomic) NSDate   *eventStartDate;
@property (strong,nonatomic) NSDate   *eventEndDate;
@property (strong,nonatomic) UIImage  *eventImage;

@end
