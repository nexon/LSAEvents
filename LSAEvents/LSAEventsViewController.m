//
//  LSAEventsViewController.m
//  LSAEvents
//
//  Created by Alberto Lagos on 19-06-15.
//  Copyright (c) 2015 Alberto Lagos. All rights reserved.
//

#import "LSAEventsViewController.h"

@interface LSAEventsViewController ()
@property (strong, nonatomic) LSAEventsDataProvider *eventsDataSource;
@property (strong, nonatomic) NSMutableDictionary *eventsByDate;
@property (strong, nonatomic) NSDateFormatter *dateFormatter;
@end

@implementation LSAEventsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.eventsByDate     = [NSMutableDictionary dictionary];
    self.eventsDataSource = [[LSAEventsDataProvider alloc] initWithTableView:self.tableView];
    
    self.calendar = [JTCalendar new];
    self.dateFormatter = [NSDateFormatter new];
    self.dateFormatter.dateFormat = @"dd-MM-yyyy";
    self.dateFormatter.timeZone = self.calendar.calendarAppearance.calendar.timeZone;
    
    [self.calendar setMenuMonthsView:self.calendarMenuView];
    [self.calendar setContentView:self.calendarContentView];
    [self.calendar setDataSource:self];
    
    [self createRandomEvents];
    
    [self eventsForToday];
    
    [self.calendar reloadData];
}

- (void)viewDidLayoutSubviews
{
    [self.calendar repositionViews];
}

- (BOOL)calendarHaveEvent:(JTCalendar *)calendar date:(NSDate *)date
{
    NSString *key = [[self dateFormatter] stringFromDate:date];
    
    if(self.eventsByDate[key] && [self.eventsByDate[key] count] > 0){
        return YES;
    }
    
    return NO;
}

- (void)calendarDidDateSelected:(JTCalendar *)calendar date:(NSDate *)date
{
    NSString *key = [[self dateFormatter] stringFromDate:date];
    [self.eventsDataSource refreshTableWithItems:self.eventsByDate[key]];
    
}

- (void)eventsForToday
{
    NSString *key = [[self dateFormatter] stringFromDate:[NSDate date]];
    [self.eventsDataSource refreshTableWithItems:self.eventsByDate[key]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createRandomEvents
{
    NSMutableArray *events = [LSAUtils randomEvents:100];
    for (LSAEvent *event in events) {
        NSString *key = [[self dateFormatter] stringFromDate:event.eventStartDate];

        if(!self.eventsByDate[key]){
            self.eventsByDate[key] = [NSMutableArray new];
        }
        
        [self.eventsByDate[key] addObject:event];
    }
}

@end
