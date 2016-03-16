//
//  MABaseTableViewController.h
//  简历
//
//  Created by apple on 16/3/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MATableViewCell;
@class MATextTableViewCell;

@interface MABaseTableViewController : UITableViewController

@property(nonatomic ,weak) MATableViewCell *maTableViewCell;
@property(nonatomic ,strong) MATextTableViewCell *maTextTableViewCell;

@end
