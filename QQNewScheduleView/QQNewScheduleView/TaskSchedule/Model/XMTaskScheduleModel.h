//
//  XMTaskScheduleModel.h
//  xianmai
//
//  Created by JiuFuKeJi on 2019/6/21.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XMTaskScheduleModel : NSObject

@property (nonatomic, copy) NSString *icon;         //!< 任务状态图标
@property (nonatomic, copy) NSString *title;        //!< 流程标题
@property (nonatomic, copy) NSString *content;      //!< 流程内容
@property (nonatomic, assign) NSInteger index;      //!< 模型索引,为了设置连接线用
@property (nonatomic, assign) NSInteger totalCount; //!< 模型总数量,为了设置连接线用

@end

NS_ASSUME_NONNULL_END
