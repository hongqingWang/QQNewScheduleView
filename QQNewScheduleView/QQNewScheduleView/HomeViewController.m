//
//  HomeViewController.m
//  QQNewScheduleView
//
//  Created by JiuFuKeJi on 2019/6/25.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import "HomeViewController.h"
#import "XMTaskScheduleViewController.h"

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
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"点我" style:UIBarButtonItemStylePlain target:self action:@selector(didClickRightBarButtonItem)];
}

#pragma mark - Events
- (void)didClickRightBarButtonItem {
    
    XMTaskScheduleViewController *vc = [[XMTaskScheduleViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
