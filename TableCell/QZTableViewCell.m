//
//  QZTableViewCell.m
//  QZFrame
//
//  Created by tusm on 15/10/2.
//  Copyright (c) 2015年 haoyue. All rights reserved.
//

#import "QZTableViewCell.h"

@implementation QZTableViewCell

- (void)applyData:(id)data{
    if (self.bindContainer) {
        [self.bindContainer applyWithDate:data];
    }
}

@end
