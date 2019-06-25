//
//  XMTaskScheduleCell.m
//  xianmai
//
//  Created by JiuFuKeJi on 2019/6/21.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import "XMTaskScheduleCell.h"
#import "XMTaskScheduleFrameModel.h"
#import "XMTaskScheduleModel.h"

@interface XMTaskScheduleCell ()

@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UIImageView *redImageView;
@property (nonatomic, strong) UIView *verticalLineView;     //!< 竖线
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation XMTaskScheduleCell

- (void)setFrameModel:(XMTaskScheduleFrameModel *)frameModel {
    _frameModel = frameModel;
    
    self.titleLabel.text = frameModel.titleString;
    self.contentLabel.text = frameModel.contentString;
    if (frameModel.isShowIcon) {
//        [self.iconImageView xm_setImageWithURLStr:frameModel.model.icon];
        self.redImageView.hidden = YES;
    } else {
        self.redImageView.hidden = NO;
    }
}

+ (instancetype)taskScheduleCellWithTableView:(UITableView *)tableView {
    
    static NSString * const ID = @"XMTaskScheduleCell";
    XMTaskScheduleCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[XMTaskScheduleCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}

#pragma mark - SetupUI
- (void)setupUI {
    
    [self.contentView addSubview:self.verticalLineView];
    [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.redImageView];
    [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.contentLabel];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.iconImageView.frame = self.frameModel.iconImageViewFrame;
    self.redImageView.frame = self.frameModel.redImageViewFrame;
    self.titleLabel.frame = self.frameModel.titleLabelFrame;
    self.contentLabel.frame = self.frameModel.contentLabelFrame;
    self.verticalLineView.frame = self.frameModel.verticalLineViewFrame;
}

- (void)addSubview:(UIView *)view {
    if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
        [super addSubview:view];
}

#pragma mark - Getters and Setters
- (UIImageView *)iconImageView {
    if (_iconImageView == nil) {
        _iconImageView = [[UIImageView alloc] init];
    }
    return _iconImageView;
}

- (UIImageView *)redImageView {
    if (_redImageView == nil) {
        _redImageView = [[UIImageView alloc] init];
        _redImageView.backgroundColor = [UIColor redColor];
        _redImageView.layer.cornerRadius = 3;
        _redImageView.layer.masksToBounds = YES;
        _redImageView.hidden = YES;
    }
    return _redImageView;
}

- (UIView *)verticalLineView {
    if (_verticalLineView == nil) {
        _verticalLineView = [[UIView alloc] init];
        _verticalLineView.backgroundColor = [UIColor lightTextColor];
    }
    return _verticalLineView;
}

- (UILabel *)titleLabel {
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @" ";
        _titleLabel.textColor = [UIColor darkTextColor];
        _titleLabel.font = [UIFont systemFontOfSize:14];
    }
    return _titleLabel;
}

- (UILabel *)contentLabel {
    if (_contentLabel == nil) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.text = @" ";
        _contentLabel.textColor = [UIColor darkTextColor];
        _contentLabel.font = [UIFont systemFontOfSize:14];
    }
    return _contentLabel;
}

@end
