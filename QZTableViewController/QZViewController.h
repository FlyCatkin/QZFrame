//
//  QZTableViewController.h
//  QZFrame
//
//  Created by tusm on 15/10/2.
//  Copyright (c) 2015年 haoyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QZTableViewCell.h"

@interface QZViewController : UIViewController

@property (nonatomic, strong)IBOutlet UITableView *tableView;
@property(nonatomic, copy)NSString *nibCell;
@property (nonatomic, strong)NSMutableArray *dataObjcts;

- (void)applyData:(NSMutableArray *)dataObjcts;

@end
