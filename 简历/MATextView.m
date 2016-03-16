//
//  MATextView.m
//  简历
//
//  Created by apple on 16/3/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MATextView.h"




@interface MATextView ()<UITextViewDelegate>

@property (nonatomic ,strong)UITextView *textView;


@end

@implementation MATextView

-(instancetype)init{
    CGRect frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-64);
    if (self = [super initWithFrame:frame]) {
        
        [self setView];
    }
    return self;
}

-(void)setView{
    
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:self.bounds];
    [self addSubview:imgView];
    imgView.image = [UIImage imageNamed:@"textbg"];
    
    
    UILabel *titleLable = [[UILabel alloc]init];
    _titleLable = titleLable;
    
    [self addSubview:titleLable];
    titleLable.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width-100)/2,30 , 100, 35);
    
    
    // 添加textView
    [self setUpTextView];

        
}



-(void)setUpTextView{
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(25, 50, self.bounds.size.width-50, self.bounds.size.height-260)];
    _textView = textView;
    textView.alwaysBounceVertical = YES;
    textView.delegate = self;
    
    textView.backgroundColor = [UIColor grayColor];
    
    [self addSubview:textView];

}





@end
