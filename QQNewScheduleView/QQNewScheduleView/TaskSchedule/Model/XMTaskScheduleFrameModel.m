//
//  XMTaskScheduleFrameModel.m
//  xianmai
//
//  Created by JiuFuKeJi on 2019/6/21.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import "XMTaskScheduleFrameModel.h"
#import "XMTaskScheduleModel.h"

@implementation XMTaskScheduleFrameModel

- (void)setModel:(XMTaskScheduleModel *)model {
    _model = model;
    
    // iconImageViewFrame
    CGFloat iconFrameX = 38;
    CGFloat iconFrameY = 15;
    CGFloat iconFrameW = 24;
    CGFloat iconFrameH = 24;
    self.iconImageViewFrame = CGRectMake(iconFrameX, iconFrameY, iconFrameW, iconFrameH);
    
    // redImageViewFrame
    CGFloat redFrameW = 6;
    CGFloat redFrameH = redFrameW;
    CGFloat redFrameX = CGRectGetMidX(_iconImageViewFrame) - (redFrameW / 2);
    CGFloat redFrameY = 15;
    self.redImageViewFrame = CGRectMake(redFrameX, redFrameY, redFrameW, redFrameH);
    
    CGSize textMaxSize = CGSizeMake([UIScreen mainScreen].bounds.size.width - 36 + 24 + 15 - 16, MAXFLOAT);
    
    // titleLabelFrame
    CGFloat titleFrameX = 36 + 24 + 15;
    CGFloat titleFrameY = 0;
    if (model.content.length > 0) {
        titleFrameY = 15 + 3;
    } else {
        titleFrameY = 10;
    }
    CGFloat titleFrameW = [UIScreen mainScreen].bounds.size.width - titleFrameX - 16;
    CGFloat titleFrameH = [model.title boundingRectWithSize:textMaxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14]} context:nil].size.height;;
    self.titleLabelFrame = CGRectMake(titleFrameX, titleFrameY, titleFrameW, titleFrameH);
    
    // contentLabelFrame
    CGFloat contentFrameX = 36 + 24 + 15;
    CGFloat contentFrameY = 15 + 4 + titleFrameH + 10;
    CGFloat contentFrameW = [UIScreen mainScreen].bounds.size.width - titleFrameX - 16;
    CGFloat contentFrameH = 0;
    if (model.content.length > 0) {
        contentFrameH = [model.content boundingRectWithSize:textMaxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14]} context:nil].size.height;
    }
    self.contentLabelFrame = CGRectMake(contentFrameX, contentFrameY, contentFrameW, contentFrameH);
    
    // cellHeight
    if (contentFrameH == 0) {       // content 为空
        _cellHeight = CGRectGetMaxY(_titleLabelFrame) + 10;
    } else {                        // content 有值
        _cellHeight = CGRectGetMaxY(_contentLabelFrame) + 10;
    }
    
    // verticalLineViewFrame
    CGFloat lineFrameW = 1;
    CGFloat lineFrameX = CGRectGetMidX(_iconImageViewFrame) - (lineFrameW / 2);
    CGFloat lineFrameY = 0;
    CGFloat lineFrameH = 0;
    if (model.index == 0) {                                 // 第一个
        lineFrameY = CGRectGetMaxY(_iconImageViewFrame);
        lineFrameH = _cellHeight - lineFrameY;
    } else if (model.index == model.totalCount - 1) {       // 最后一个
        lineFrameY = 0;
        if (![model.icon isEqualToString:@""]) {
            lineFrameH = CGRectGetMinY(_iconImageViewFrame);
        } else {
            lineFrameH = CGRectGetMinY(_redImageViewFrame);
        }
    } else {                                                // 中间得
        lineFrameY = 0;
        lineFrameH = _cellHeight;
    }
    
    self.verticalLineViewFrame = CGRectMake(lineFrameX, lineFrameY, lineFrameW, lineFrameH);
}

- (BOOL)isShowIcon {
    return ![self.model.icon isEqualToString:@""];
}

- (NSString *)titleString {
    return self.model.title;
}

- (NSString *)contentString {
    return self.model.content;
}

//- (CGFloat)cellHeight {
//    if (_cellHeight) {
//        return _cellHeight;
//    }
//    return 80;
//}

@end
