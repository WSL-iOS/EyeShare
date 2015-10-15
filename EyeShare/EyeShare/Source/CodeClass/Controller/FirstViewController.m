//
//  FirstViewController.m
//  EyeShare
//
//  Created by lanou3g on 15/10/15.
//  Copyright (c) 2015年 ShengLi. All rights reserved.
//

#import "FirstViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface FirstViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic ,strong)FirstView *firstV;
@property(nonatomic ,strong)MPMoviePlayerController *moviePlayer;
@end

@implementation FirstViewController

-(void)loadView
{
    
    self.navigationItem.title =@"天下糗";
    self.firstV =[[FirstView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.view =self.firstV;

    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //自动适应
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
        self.edgesForExtendedLayout =UIRectEdgeNone ;
    }
    //Button方法
    [self.firstV.firstButton addTarget:self action:@selector(firstButtonAction:) forControlEvents:UIControlEventTouchUpInside];

    [self.firstV.secondButton addTarget:self action:@selector(secondButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.firstV.thirdButton addTarget:self action:@selector(thirdButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.firstV.fourButton addTarget:self action:@selector(fourButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.firstV.fiveButton addTarget:self action:@selector(fiveButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.firstV.sixButton addTarget:self action:@selector(sixButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    //tableView代理
    self.firstV.firstTableview.delegate =self;
    self.firstV.firstTableview.dataSource =self;
    
    self.firstV.secondTableView.delegate =self;
    self.firstV.secondTableView.dataSource =self;
    
    self.firstV.thirdTableView.delegate =self;
    self.firstV.thirdTableView.dataSource =self;
    
    self.firstV.fourTableView.delegate =self;
    self.firstV.fourTableView.dataSource =self;
       
    self.firstV.fiveTableView.delegate =self;
    self.firstV.fiveTableView.dataSource =self;
    
    self.firstV.sixTableView.delegate =self;
    self.firstV.sixTableView.dataSource =self;
    
   
}


//buttonAction
-(void)firstButtonAction:(UIButton *)sender
{
    self.firstV.mainScrollView.contentOffset =CGPointMake(0, 0);
}
-(void)secondButtonAction:(UIButton *)sender
{
    self.firstV.mainScrollView.contentOffset =CGPointMake(kScreenWidth, 0);
}
-(void)thirdButtonAction:(UIButton *)sender
{
    self.firstV.mainScrollView.contentOffset =CGPointMake(2*kScreenWidth, 0);

}
-(void)fourButtonAction:(UIButton *)sender
{
     self.firstV.mainScrollView.contentOffset =CGPointMake(3*kScreenWidth, 0);
}

-(void)fiveButtonAction:(UIButton *)sender
{
     self.firstV.mainScrollView.contentOffset =CGPointMake(4*kScreenWidth, 0);
}
-(void)sixButtonAction:(UIButton *)sender
{
      self.firstV.mainScrollView.contentOffset =CGPointMake(5*kScreenWidth, 0);
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (tableView ==self.firstV.firstTableview) {
        return 1;
    }else if (tableView ==self.firstV.secondTableView){
        return 1;
    }else if(tableView ==self.firstV.thirdTableView) {
        return 1;
    }else if (tableView ==self.firstV.fourTableView){
        return 1;
    }else if (tableView ==self.firstV.fiveTableView){
        return 1;
    }else {
        return 1;
    }
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    if (tableView ==self.firstV.firstTableview) {
        return 100;
    }else if (tableView ==self.firstV.secondTableView){
        return 100;
    }else if(tableView ==self.firstV.thirdTableView) {
        return 100;
    }else if (tableView ==self.firstV.fourTableView){
        return 100;
    }else if (tableView ==self.firstV.fiveTableView){
        return 100;
    }else {
        return 100;
    }
    
    
    
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView ==self.firstV.firstTableview) {
        return kScreenHeight - 100;
    }else if (tableView ==self.firstV.secondTableView){
        return kScreenHeight - 100;
    }else if(tableView ==self.firstV.thirdTableView) {
        return kScreenHeight - 100;
    }else if (tableView ==self.firstV.fourTableView){
        return kScreenHeight - 100;
    }else if (tableView ==self.firstV.fiveTableView){
        return kScreenHeight - 100;
    }else{
        return kScreenHeight - 100;
    }


    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
     FirstTableViewCell *cell1 =[tableView  dequeueReusableCellWithIdentifier:@"cell1"];
    SecondTableViewCell *cell2 =[tableView dequeueReusableCellWithIdentifier:@"cell2"];
    ThirdTableViewCell *cell3 =[tableView dequeueReusableCellWithIdentifier:@"cell3"];
   
    
    if (tableView ==self.firstV.firstTableview) {

        if (cell1 ==nil) {
            cell1 =[[FirstTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
            cell1.selectionStyle =UITableViewCellSelectionStyleNone;
            cell1.userImageV.image =[UIImage imageNamed:@"picholder_profile"];
            cell1.nameLabel.text =@"UserName";
           cell1.contentLabel.text =@"专享";
           
             
        }
        return cell1;
       
    }else if (tableView ==self.firstV.secondTableView){
        
        if (cell2 ==nil) {
        cell2 =[[SecondTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
        cell2.selectionStyle =UITableViewCellSelectionStyleNone;            cell2.userImageV.image =[UIImage imageNamed:@"picholder_profile"];
            cell2.nameLabel.text =@"UserName";
            cell2.contentLabel.text =@"视频";
            cell2.contentImageV.image =[UIImage imageNamed:@"picholder"];
            
        }
        return cell2;
    }else if(tableView ==self.firstV.thirdTableView) {
        if (cell3 ==nil) {
        cell3 =[[ThirdTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell3"];
            cell3.selectionStyle =UITableViewCellSelectionStyleNone;
            cell3.userImageV.image =[UIImage imageNamed:@"picholder_profile"];
            cell3.nameLabel.text =@"UserName";
            cell3.contentLabel.text =@"纯文";
            cell3.movieView.backgroundColor =[UIColor blueColor];
            
          
            
            
        }
        return cell3;
     
    }else if (tableView ==self.firstV.fourTableView){
        if (cell2 ==nil) {
            cell2 =[[SecondTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
            cell2.selectionStyle =UITableViewCellSelectionStyleNone;
            cell2.userImageV.image =[UIImage imageNamed:@"picholder_profile"];
            cell2.nameLabel.text =@"UserName";
            cell2.contentLabel.text =@"纯图";
            cell2.contentImageV.image =[UIImage imageNamed:@"picholder"];
            
        }
        return cell2;

        
    }else if (tableView ==self.firstV.fiveTableView){
        
        if (cell2 ==nil) {
            cell2 =[[SecondTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
            cell2.selectionStyle =UITableViewCellSelectionStyleNone;            cell2.userImageV.image =[UIImage imageNamed:@"picholder_profile"];
            cell2.nameLabel.text =@"UserName";
            cell2.contentLabel.text =@"精华";
            cell2.contentImageV.image =[UIImage imageNamed:@"picholder"];
            
        }
        return cell2;

        
    }else {
        if (cell3 ==nil) {
            cell3 =[[ThirdTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell6"];
            cell3.selectionStyle =UITableViewCellSelectionStyleNone;
            cell3.userImageV.image =[UIImage imageNamed:@"picholder_profile"];
            cell3.nameLabel.text =@"UserName";
            cell3.contentLabel.text =@"最新";
            
        }
        return cell3;
        
        
    }

    
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
