//
//  MAThreeViewController.m
//  简历
//
//  Created by apple on 16/3/15.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MAThreeViewController.h"
#import "MATextTableViewCell.h"
#import "MATextView.h"
@interface MAThreeViewController ()

@end

@implementation MAThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    self.navigationItem.title = @"知识状况";
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    self.maTextTableViewCell.textView.titleLable.text =self.navigationItem.title;
    
    
    
}

@end
