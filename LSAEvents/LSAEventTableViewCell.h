//
//  LSAEventTableViewCell.h
//  LSAEvents
//
//  Created by Alberto Lagos on 19-06-15.
//  Copyright (c) 2015 Alberto Lagos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LSAEvent.h"

@interface LSAEventTableViewCell : UITableViewCell
- (void)configureCell:(LSAEvent *)aEvent;
@end
