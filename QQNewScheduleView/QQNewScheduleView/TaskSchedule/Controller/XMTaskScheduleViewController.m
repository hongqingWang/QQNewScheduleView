//
//  XMTaskScheduleViewController.m
//  QQNewScheduleView
//
//  Created by JiuFuKeJi on 2019/6/25.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import "XMTaskScheduleViewController.h"
#import "AppDelegate.h"
#import "XMTaskScheduleHeaderView.h"
#import "XMTaskScheduleCell.h"
#import "XMTaskScheduleFooterView.h"
#import "XMTaskScheduleModel.h"
#import "XMTaskScheduleFrameModel.h"

@interface XMTaskScheduleViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) XMTaskScheduleHeaderView *headerView;
@property (nonatomic, strong) XMTaskScheduleFooterView *footerView;
@property (nonatomic, strong) NSMutableArray<XMTaskScheduleFrameModel *> *taskScheduleModelArray; //!< 任务列表模型数组

@end

@implementation XMTaskScheduleViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    [self loadData];
}

#pragma mark - LoadData
- (void)loadData {
    
//    // 未登录则传空
//    NSString *token = @"";
//    // 判断是否登录
//    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//    if ([appDelegate isLogin] && appDelegate.token) {
//        token = appDelegate.token;
//    }
//
//    NSDictionary *para = @{
//                           @"token":token,
//                           @"task_id":self.taskId
//                           };
//    NSString *URLString = TaskSchedule;
//
//    [XMNetWork postWithURLString:URLString params:para notReachable:^{
//
//        [XMSystemAlertView showSystemAlertView:self message:@"请检查网络"];
//
//    } success:^(NSString *code, id responseObject) {
//
//        if ([code isEqualToString:@"1000"]) {
//
//            NSArray *tempArray = responseObject[@"data"];
//            for (int i = 0; i < tempArray.count; i++) {
//                XMTaskScheduleFrameModel *frameModel = [[XMTaskScheduleFrameModel alloc] init];
//                XMTaskScheduleModel *model = [XMTaskScheduleModel parse:tempArray[i]];
//                model.index = i;
//                model.totalCount = tempArray.count;
//                frameModel.model = model;
//                [self.taskScheduleModelArray addObject:frameModel];
//            }
//            [self.tableView reloadData];
//        }
//    } failure:^(NSError *error) {
//
//    }];
}

#pragma mark - SetupUI
- (void)setupUI {
    
    self.title = @"任务进度";
    [self.view addSubview:self.tableView];
    self.tableView.tableHeaderView = self.headerView;
    self.tableView.tableFooterView = self.footerView;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.taskScheduleModelArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    XMTaskScheduleCell *cell = [XMTaskScheduleCell taskScheduleCellWithTableView:tableView];
    cell.frameModel = self.taskScheduleModelArray[indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    XMTaskScheduleFrameModel *frameModel = self.taskScheduleModelArray[indexPath.row];
    return frameModel.cellHeight;
}

#pragma mark - Getters and Setters
- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] init];
        _tableView.frame = CGRectMake(0, 88, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 88);
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

- (XMTaskScheduleHeaderView *)headerView {
    if (_headerView == nil) {
        _headerView = [[XMTaskScheduleHeaderView alloc] init];
    }
    return _headerView;
}

- (XMTaskScheduleFooterView *)footerView {
    if (_footerView == nil) {
        _footerView = [[XMTaskScheduleFooterView alloc] init];
    }
    return _footerView;
}

- (NSMutableArray<XMTaskScheduleFrameModel *> *)taskScheduleModelArray {
    if (_taskScheduleModelArray == nil) {
        _taskScheduleModelArray = [NSMutableArray array];
    }
    return _taskScheduleModelArray;
}

@end
