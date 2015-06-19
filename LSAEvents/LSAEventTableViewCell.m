//
//  LSAEventTableCellView.m
//  LSAEvents
//
//  Created by Alberto Lagos on 19-06-15.
//  Copyright (c) 2015 Alberto Lagos. All rights reserved.
//

#import "LSAEventTableViewCell.h"

@implementation LSAEventTableViewCell

- (void)configureCell:(LSAEvent *)aEvent
{
    self.textLabel.text       = aEvent.eventTitle;
    self.detailTextLabel.text = aEvent.eventDescription;
    
}
@end
