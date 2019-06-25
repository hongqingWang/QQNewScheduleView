//
//  XMTaskScheduleHeaderView.m
//  xianmai
//
//  Created by JiuFuKeJi on 2019/6/21.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import "XMTaskScheduleHeaderView.h"

@interface XMTaskScheduleHeaderView ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation XMTaskScheduleHeaderView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44);
        [self setupUI];
    }
    return self;
}

#pragma mark - SetupUI
- (void)setupUI {
    
    [self addSubview:self.titleLabel];
    
//    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self).offset(16);
//        make.centerY.equalTo(self);
//    }];
}

#pragma mark - Getters and Setters
- (UILabel *)titleLabel {
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @"任务进度";
        _titleLabel.textColor = [UIColor darkTextColor];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    return _titleLabel;
}

@end
