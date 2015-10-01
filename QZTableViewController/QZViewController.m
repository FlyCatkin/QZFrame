//
//  QZTableViewController.m
//  QZFrame
//
//  Created by tusm on 15/10/2.
//  Copyright (c) 2015年 haoyue. All rights reserved.
//

#import "QZViewController.h"

@interface QZViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation QZViewController

#pragma mark - 生命周期

- (void)viewDidLoad{
    [super viewDidLoad];
    if (self.tableView) {
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
    }
}

#pragma mark - 代理

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataObjcts.count;
}

- (QZTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *qzTableCell = @"qzTableCell";
    QZTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:qzTableCell];
    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:self.nibCell owner:nil options:nil]lastObject];
    }
    [cell applyData:self.dataObjcts];
    return cell;
}

#pragma mark -方法

- (void)applyData:(NSMutableArray *)dataObjcts{
    self.dataObjcts = dataObjcts;
    [self.tableView reloadData];
}

@end
