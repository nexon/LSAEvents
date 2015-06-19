//
//  LSAEventsDataProvider.h
//  LSAEvents
//
//  Created by Alberto Lagos on 19-06-15.
//  Copyright (c) 2015 Alberto Lagos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "LSAEventTableViewCell.h"
#import "LSAUtils.h"

@interface LSAEventsDataProvider : NSObject <UITableViewDelegate, UITableViewDataSource>


- (instancetype)initWithTableView:(UITableView *)aTableView;
- (void)refreshTableWithItems:(NSMutableArray *)aItems;

@property (weak, nonatomic) UITableView *tableView;

@end
