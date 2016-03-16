//
//  MABaseTableViewController.m
//  简历
//
//  Created by apple on 16/3/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MABaseTableViewController.h"
#import "MATableViewCell.h"
#import "MATextTableViewCell.h"

@interface MABaseTableViewController ()<UITableViewDataSource>

@end

@implementation MABaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBarHidden = NO;
    self.tableView.dataSource = self;
    self.tableView.backgroundColor = [UIColor grayColor];
   
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
        _maTableViewCell = cell;
        
        return cell;
    }else{
        MATextTableViewCell *cell = [MATextTableViewCell cellWithTableView:tableView];
        _maTextTableViewCell = cell;
        return cell;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section==0){
        return 100;
    }else{
        return [UIScreen mainScreen].bounds.size.height-164;
    }
}


@end
