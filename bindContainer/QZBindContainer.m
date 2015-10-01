//
//  QZBindContainer.m
//  QZFrame
//
//  Created by tusm on 15/10/2.
//  Copyright (c) 2015年 haoyue. All rights reserved.
//

#import "QZBindContainer.h"

@implementation QZBindContainer

- (void)applyWithDate:(id)date{
    for (QZBindData *bindData in self.bindDatas) {
        [bindData applyWithDate:date];
    }
}

@end
