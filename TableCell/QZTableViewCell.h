//
//  QZTableViewCell.h
//  QZFrame
//
//  Created by tusm on 15/10/2.
//  Copyright (c) 2015年 haoyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QZBindContainer.h"

@interface QZTableViewCell : UITableViewCell

@property (nonatomic, strong)IBOutlet QZBindContainer *bindContainer;

- (void)applyData:(id)data;

@end
