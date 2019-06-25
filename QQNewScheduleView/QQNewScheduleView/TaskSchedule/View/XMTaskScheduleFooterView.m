//
//  XMTaskScheduleFooterView.m
//  xianmai
//
//  Created by JiuFuKeJi on 2019/6/21.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import "XMTaskScheduleFooterView.h"
#import <Masonry.h>

@interface XMTaskScheduleFooterView ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *label01;
@property (nonatomic, strong) UILabel *labelDetail01;
@property (nonatomic, strong) UILabel *label02;
@property (nonatomic, strong) UIButton *button02;
@property (nonatomic, strong) UILabel *label03;
@property (nonatomic, strong) UIButton *button03;

@end

@implementation XMTaskScheduleFooterView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        self.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200);
        [self setupUI];
    }
    return self;
}

#pragma mark - SetupUI
- (void)setupUI {
    
    [self addSubview:self.titleLabel];
    [self addSubview:self.label01];
    [self addSubview:self.labelDetail01];
    [self addSubview:self.label02];
    [self addSubview:self.button02];
    [self addSubview:self.label03];
    [self addSubview:self.button03];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(20);
        make.left.equalTo(self).offset(16);
    }];
    [self.label01 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleLabel.mas_bottom).offset(14);
        make.left.equalTo(self.titleLabel);
    }];
    [self.labelDetail01 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.label01);
        make.left.equalTo(self.label01.mas_right);
        make.right.equalTo(self.mas_right).offset(-16);
    }];
    [self.label02 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.labelDetail01.mas_bottom).offset(8);
        make.left.equalTo(self.label01);
    }];
    [self.button02 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.label02.mas_right);
        make.centerY.equalTo(self.label02);
    }];
    [self.label03 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.label02.mas_bottom).offset(8);
        make.left.equalTo(self.label02);
    }];
    [self.button03 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.label03.mas_right);
        make.centerY.equalTo(self.label03);
    }];
}

#pragma mark - Events

/**
 先迈网任务单结算保障制度
 */
- (void)didClickGuaranteeSystemButton:(UIButton *)button {
    
    NSLog(@"先迈网任务单结算保障制度");
}

/**
 先迈网会员违规做单管理条例
 */
- (void)didClickRegulationButton:(UIButton *)button {

    NSLog(@"先迈网会员违规做单管理条例");
}

#pragma mark - Getters and Setters
- (UILabel *)titleLabel {
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @"免责提示";
        _titleLabel.textColor = [UIColor darkTextColor];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    }
    return _titleLabel;
}

- (UILabel *)label01 {
    if (_label01 == nil) {
        _label01 = [[UILabel alloc] init];
        _label01.text = @"1.";
        _label01.textColor = [UIColor darkTextColor];
        _label01.font = [UIFont systemFontOfSize:13];
    }
    return _label01;
}

- (UILabel *)labelDetail01 {
    if (_labelDetail01 == nil) {
        _labelDetail01 = [[UILabel alloc] init];
        _labelDetail01.text = @"先迈网仅提供中介服务，请您在承接任务前详细了解任务内容及任务步骤，审慎决定是否承接，由此产生的后果与先迈网无关！";
        _labelDetail01.textColor = [UIColor lightTextColor];
        _labelDetail01.font = [UIFont systemFontOfSize:13];
        _labelDetail01.numberOfLines = 0;
    }
    return _labelDetail01;
}

- (UILabel *)label02 {
    if (_label02 == nil) {
        _label02 = [[UILabel alloc] init];
        _label02.text = @"2.";
        _label02.textColor = [UIColor lightTextColor];
        _label02.font = [UIFont systemFontOfSize:13];
    }
    return _label02;
}

- (UIButton *)button02 {
    if (_button02 == nil) {
        _button02 = [UIButton buttonWithType:UIButtonTypeSystem];
        NSMutableAttributedString *attibuteString = [[NSMutableAttributedString alloc] initWithString:@"先迈网任务单结算保障制度"];
        NSRange titleRange = {0, [attibuteString length]};
        [attibuteString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:titleRange];
        [_button02 setAttributedTitle:attibuteString forState:UIControlStateNormal];
        [_button02.titleLabel setFont:[UIFont systemFontOfSize:13]];
        [_button02 addTarget:self action:@selector(didClickGuaranteeSystemButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button02;
}

- (UILabel *)label03 {
    if (_label03 == nil) {
        _label03 = [[UILabel alloc] init];
        _label03.text = @"3.";
        _label03.textColor = [UIColor darkTextColor];
        _label03.font = [UIFont systemFontOfSize:13];
    }
    return _label03;
}

- (UIButton *)button03 {
    if (_button03 == nil) {
        _button03 = [UIButton buttonWithType:UIButtonTypeSystem];
        NSMutableAttributedString *attibuteString = [[NSMutableAttributedString alloc] initWithString:@"先迈网会员违规做单管理条例"];
        NSRange titleRange = {0, [attibuteString length]};
        [attibuteString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:titleRange];
        [_button03 setAttributedTitle:attibuteString forState:UIControlStateNormal];
        [_button03.titleLabel setFont:[UIFont systemFontOfSize:13]];
        [_button03 addTarget:self action:@selector(didClickRegulationButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button03;
}

@end
