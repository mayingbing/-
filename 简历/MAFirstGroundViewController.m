//
//  MAFirstGroundViewController.m
//  简历
//
//  Created by apple on 16/3/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MAFirstGroundViewController.h"

#import "MATableViewCell.h"
#import "MATextTableViewCell.h"
#import "MAToolBar.h"

@interface MAFirstGroundViewController ()<UITableViewDelegate,UITableViewDataSource>



@end

@implementation MAFirstGroundViewController

-(instancetype)init{
    
    if (self = [super init]) {
        
    }
    return self;
}

-(void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    self.tableView.backgroundColor = [UIColor grayColor];
    
    // 添加工具条
    [self setUpToolBar];
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section==0) {
        MATableViewCell *cell = [MATableViewCell cellWithTableView:tableView ];
        
        
        return cell;
    }else{
        MATextTableViewCell *cell = [MATextTableViewCell cellWithTableView:tableView];
        
        return cell;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section==0){
        return 100;
    }else{
        return [UIScreen mainScreen].bounds.size.height-64;
    }
}
- (void)setUpToolBar
{
    MAToolBar *toolBar = [[MAToolBar alloc] init];
    
    
    CGFloat toolBarW = self.view.width;
    CGFloat toolBarH = 64;
    CGFloat toolBarY = self.view.height - toolBarH;
    toolBar.frame = CGRectMake(0, toolBarY, toolBarW, toolBarH);
    toolBar.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:toolBar];
}

@end
