//
//  LSAEventsDataProvider.m
//  LSAEvents
//
//  Created by Alberto Lagos on 19-06-15.
//  Copyright (c) 2015 Alberto Lagos. All rights reserved.
//

#import "LSAEventsDataProvider.h"
@interface LSAEventsDataProvider()
@property (strong,nonatomic)  NSArray *items;
@end

@implementation LSAEventsDataProvider

- (instancetype)initWithTableView:(UITableView *)aTableView
{
    self = [super init];
    if(self) {
        self.items     =  [NSMutableArray array];
        self.tableView = aTableView;
    }
    
    return self;
}

- (void)refreshTableWithItems:(NSMutableArray *)aItems
{
    self.items = aItems;
    [self.tableView reloadData];
}

- (void)setTableView:(UITableView *)tableView
{
    if (tableView != _tableView)
    {
        _tableView = tableView;
        tableView.delegate = self;
        tableView.dataSource = self;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LSAEventTableViewCell *cell = (LSAEventTableViewCell *)[self.tableView dequeueReusableCellWithIdentifier:@"LSAEventTableViewCell"];

    LSAEvent *event = self.items[indexPath.row];
    [cell configureCell:event];
    return cell;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

@end
