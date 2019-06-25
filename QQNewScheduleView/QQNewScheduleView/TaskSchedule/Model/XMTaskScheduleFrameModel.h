//
//  XMTaskScheduleFrameModel.h
//  xianmai
//
//  Created by JiuFuKeJi on 2019/6/21.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class XMTaskScheduleModel;

NS_ASSUME_NONNULL_BEGIN

@interface XMTaskScheduleFrameModel : NSObject

@property (nonatomic, strong) XMTaskScheduleModel *model;
@property (nonatomic, assign) BOOL isShowIcon;              //!< 是否显示图标(不显示图标则显示红点)
@property (nonatomic, copy) NSString *titleString;          //!< 标题
@property (nonatomic, copy) NSString *contentString;        //!< 内容

@property (nonatomic, assign) CGRect iconImageViewFrame;
@property (nonatomic, assign) CGRect redImageViewFrame;
@property (nonatomic, assign) CGRect titleLabelFrame;
@property (nonatomic, assign) CGRect contentLabelFrame;
@property (nonatomic, assign) CGRect verticalLineViewFrame; //!< 竖向进度条Frame
@property (nonatomic, assign) CGFloat cellHeight;           //!< Cell高度

@end

NS_ASSUME_NONNULL_END
