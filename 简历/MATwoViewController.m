//
//  MATwoViewController.m
//  简历
//
//  Created by apple on 16/3/15.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MATwoViewController.h"
#import "MATextTableViewCell.h"
#import "MATextView.h"
@interface MATwoViewController ()

@end

@implementation MATwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    self.navigationItem.title = @"求职意向";
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    self.maTextTableViewCell.textView.titleLable.text =self.navigationItem.title;
    
    
    
}


@end
