//
//  MAProfileViewController.m
//  简历
//
//  Created by apple on 16/3/15.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MAProfileViewController.h"
#import "MATableViewCell.h"
#import "MATextTableViewCell.h"
#import "MATextView.h"


@interface MAProfileViewController ()

@end


@implementation MAProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.navigationItem.title = @"个人简介";
}


- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    self.maTextTableViewCell.textView.titleLable.text =self.navigationItem.title;
    self.maTextTableViewCell.textView.text.text = @"1231121";
    
    
}


@end
