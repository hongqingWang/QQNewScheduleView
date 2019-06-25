//
//  XMTaskScheduleCell.h
//  xianmai
//
//  Created by JiuFuKeJi on 2019/6/21.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XMTaskScheduleFrameModel;

NS_ASSUME_NONNULL_BEGIN

@interface XMTaskScheduleCell : UITableViewCell

@property (nonatomic, strong) XMTaskScheduleFrameModel *frameModel;

+ (instancetype)taskScheduleCellWithTableView:(UITableView *)tableView;

@end

NS_ASSUME_NONNULL_END
