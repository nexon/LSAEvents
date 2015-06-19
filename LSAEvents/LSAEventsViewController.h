//
//  LSAEventsViewController.h
//  LSAEvents
//
//  Created by Alberto Lagos on 19-06-15.
//  Copyright (c) 2015 Alberto Lagos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JTCalendar.h>
#import "LSAEventsDataProvider.h"

@interface LSAEventsViewController : UIViewController <JTCalendarDataSource>

@property (weak, nonatomic) IBOutlet JTCalendarMenuView *calendarMenuView;
@property (weak, nonatomic) IBOutlet JTCalendarContentView *calendarContentView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) JTCalendar *calendar;

@end
