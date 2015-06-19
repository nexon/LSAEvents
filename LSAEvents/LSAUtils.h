//
//  LSAUtils.h
//  LSAEvents
//
//  Created by Alberto Lagos on 19-06-15.
//  Copyright (c) 2015 Alberto Lagos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MBFaker/MBFaker.h>
#import "LSAEvent.h"

@interface LSAUtils : NSObject
+ (NSMutableArray *)randomEvents:(int)aQuantity;
@end
