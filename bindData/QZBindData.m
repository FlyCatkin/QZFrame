//
//  QZBindData.m
//  QZFrame
//
//  Created by tusm on 15/10/2.
//  Copyright (c) 2015年 haoyue. All rights reserved.
//

#import "QZBindData.h"

@implementation QZBindData

- (void)applyWithDate:(id)date{
    id obj = [date objectForKey:self.keyPath];
    NSString *str = [NSString stringWithFormat:@"%@",obj];
    if ([self.view isKindOfClass:[UILabel class]]) {
        UILabel *label = (UILabel *)self.view;
        label.text = str;
    }else if ([self.view isKindOfClass:[UIButton class]]) {
        UIButton *button = (UIButton *)self.view;
        [button setTitle:str forState:UIControlStateNormal];
    }else if ([self.view isKindOfClass:[UITextField class]]) {
        UITextField *textField = (UITextField *)self.view;
        textField.text = str;
    }
}

@end
