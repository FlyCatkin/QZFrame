//
//  QZBindData.h
//  QZFrame
//
//  Created by tusm on 15/10/2.
//  Copyright (c) 2015年 haoyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface QZBindData : NSObject

@property(nonatomic, strong)IBOutlet UIView *view;

@property(nonatomic, copy)NSString *keyPath;
@property(nonatomic, copy)NSString *keyType;

- (void)applyWithDate:(id)date;

@end
