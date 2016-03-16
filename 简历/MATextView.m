//
//  MATextView.m
//  简历
//
//  Created by apple on 16/3/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MATextView.h"

@implementation MATextView

-(instancetype)init{
    CGRect frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-164);
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
    titleLable.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width-100)/2,60 , 100, 35);
    
    
    
    UILabel *text = [[UILabel alloc]init];
    _text = text;
    _text.numberOfLines = 0;
    CGFloat textY = CGRectGetMaxY(_titleLable.frame)+10;
    CGFloat textW = ([UIScreen mainScreen].bounds.size.width-50);
    
    CGSize textSize = [_text.text sizeWithFont:[UIFont systemFontOfSize:12] constrainedToSize:CGSizeMake(textW, MAXFLOAT)];
    
   // _text.frame = (CGRect){{25,textY},textSize};
    _text.frame = CGRectMake(25, 50, 200, 100);
    
    _text.backgroundColor = [UIColor grayColor];
    
    [self addSubview:text];
    

    
    
    
}


@end
