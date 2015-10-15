//
//  FirstView.m
//  EyeShare
//
//  Created by lanou3g on 15/10/15.
//  Copyright (c) 2015年 ShengLi. All rights reserved.
//

#import "FirstView.h"

@implementation FirstView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self p_setview ];
    }
    return self;
}

-(void)p_setview
{
    self.mainScrollView =[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    self.mainScrollView.contentSize = CGSizeMake(6*kScreenWidth, kScreenHeight);
    self.mainScrollView.pagingEnabled =YES;
    [self addSubview:self.mainScrollView];
    
    
    //self.backgroundColor =[UIColor magentaColor];
    self.scrollView =[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 30)];
    self.scrollView.backgroundColor =[UIColor yellowColor];
    [self addSubview:self.scrollView];
    //专享
    self.firstButton =[UIButton buttonWithType:UIButtonTypeSystem];
    self.firstButton.frame =CGRectMake(0, 0, kScreenWidth /6, 30);
    self.firstButton.backgroundColor =[UIColor redColor];
    [self.firstButton setTitle:@"专享" forState:UIControlStateNormal];
    [self.scrollView addSubview:self.firstButton];
    //视频
    self.secondButton =[UIButton buttonWithType:UIButtonTypeSystem];
    self.secondButton.frame =CGRectMake(kScreenWidth /6, 0, kScreenWidth /6 , 30);
    self.secondButton.backgroundColor =[UIColor redColor];
    [self.secondButton setTitle:@"视频" forState:UIControlStateNormal];
    [self.scrollView addSubview:self.secondButton];
    
    //纯文
    self.thirdButton =[UIButton buttonWithType:UIButtonTypeSystem];
    self.thirdButton.frame =CGRectMake(kScreenWidth /3 , 0, kScreenWidth /6, 30);
    self.thirdButton.backgroundColor =[UIColor redColor];
    [self.thirdButton setTitle:@"纯文" forState:UIControlStateNormal];
    [self.scrollView addSubview:self.thirdButton];
    
    //纯图
    self.fourButton =[UIButton buttonWithType:UIButtonTypeSystem];
    self.fourButton.frame =CGRectMake(kScreenWidth /2, 0, kScreenWidth /6, 30);
    self.fourButton.backgroundColor =[UIColor redColor];
    [self.fourButton setTitle:@"纯图" forState:UIControlStateNormal];
    [self.scrollView addSubview:self.fourButton];
    
    //精华
    self.fiveButton =[UIButton buttonWithType:UIButtonTypeSystem];
    self.fiveButton.frame =CGRectMake(2*kScreenWidth /3, 0, kScreenWidth /6, 30);
    self.fiveButton.backgroundColor =[UIColor redColor];
    [self.fiveButton setTitle:@"精华" forState:UIControlStateNormal];
    [self.scrollView addSubview:self.fiveButton];
    //最新
    self.sixButton =[UIButton buttonWithType:UIButtonTypeSystem];
    self.sixButton.frame =CGRectMake(5*kScreenWidth/6, 0, kScreenWidth /6, 30);
    self.sixButton.backgroundColor =[UIColor redColor];
    [self.sixButton setTitle:@"最新" forState:UIControlStateNormal];
    [self.scrollView addSubview:self.sixButton];
    
    //专享TV
    self.firstTableview =[[UITableView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.scrollView.frame), kScreenWidth,kScreenHeight-CGRectGetMaxY(self.scrollView.frame) ) style:UITableViewStylePlain];
    self.firstTableview.backgroundColor =[UIColor magentaColor];
    [self.mainScrollView addSubview:self.firstTableview];
    
    //视频TV
    self.secondTableView =[[UITableView alloc]initWithFrame:CGRectMake(kScreenWidth, CGRectGetMaxY(self.scrollView.frame), kScreenWidth,kScreenHeight-CGRectGetMaxY(self.scrollView.frame) ) style:UITableViewStylePlain];
    self.secondTableView.backgroundColor =[UIColor yellowColor];
    [self.mainScrollView addSubview:self.secondTableView];
    
    //纯文TV
    self.thirdTableView =[[UITableView alloc]initWithFrame:CGRectMake(2*kScreenWidth, CGRectGetMaxY(self.scrollView.frame), kScreenWidth,kScreenHeight-CGRectGetMaxY(self.scrollView.frame) ) style:UITableViewStylePlain];
    self.thirdTableView.backgroundColor =[UIColor redColor];
    [self.mainScrollView addSubview:self.thirdTableView];
    
    //纯图TV
    self.fourTableView =[[UITableView alloc]initWithFrame:CGRectMake(3*kScreenWidth, CGRectGetMaxY(self.scrollView.frame), kScreenWidth,kScreenHeight-CGRectGetMaxY(self.scrollView.frame) ) style:UITableViewStylePlain];
    self.fourTableView.backgroundColor =[UIColor blueColor];
    [self.mainScrollView addSubview:self.fourTableView];
    //精华TV
    self.fiveTableView =[[UITableView alloc]initWithFrame:CGRectMake(4*kScreenWidth, CGRectGetMaxY(self.scrollView.frame), kScreenWidth,kScreenHeight-CGRectGetMaxY(self.scrollView.frame) ) style:UITableViewStylePlain];
    self.fiveTableView.backgroundColor =[UIColor greenColor];
    [self.mainScrollView addSubview:self.fiveTableView];
    //最新TV
    self.sixTableView =[[UITableView alloc]initWithFrame:CGRectMake(5*kScreenWidth, CGRectGetMaxY(self.scrollView.frame), kScreenWidth,kScreenHeight-CGRectGetMaxY(self.scrollView.frame) ) style:UITableViewStylePlain];
    self.sixTableView.backgroundColor =[UIColor grayColor];
    [self.mainScrollView addSubview:self.sixTableView];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
