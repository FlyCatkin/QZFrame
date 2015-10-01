//
//  QZBindContainer.h
//  QZFrame
//
//  Created by tusm on 15/10/2.
//  Copyright (c) 2015年 haoyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QZBindData.h"

@interface QZBindContainer : NSObject

@property (nonatomic, strong)IBOutletCollection(QZBindData)NSArray *bindDatas;

- (void)applyWithDate:(id)date;

@end
