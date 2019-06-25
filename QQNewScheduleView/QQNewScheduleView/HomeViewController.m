//
//  HomeViewController.m
//  QQNewScheduleView
//
//  Created by JiuFuKeJi on 2019/6/25.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

#pragma mark - SetupUI
- (void)setupUI {
    
    self.navigationItem.title = @"王红庆";
    self.view.backgroundColor = [UIColor whiteColor];
}

@end
