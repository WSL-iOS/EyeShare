//
//  FirstTableViewCell.m
//  EyeShare
//
//  Created by lanou3g on 15/10/15.
//  Copyright (c) 2015年 ShengLi. All rights reserved.
//

#import "FirstTableViewCell.h"

@implementation FirstTableViewCell

-(UIImageView *)userImageV
{
    if (_userImageV ==nil) {
        _userImageV =[[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
        [self.contentView addSubview:_userImageV];
    }
    
    return _userImageV;
    
}

-(UILabel *)nameLabel
{
    if (_nameLabel ==nil) {
        _nameLabel =[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.userImageV.frame)+20, 10, 200, 50)];
        _nameLabel.backgroundColor =[UIColor magentaColor];
        [self.contentView addSubview:_nameLabel];
    }
    
    return _nameLabel;
}

-(UILabel *)contentLabel
{
    if (_contentLabel ==nil) {
        _contentLabel =[[UILabel alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(self.nameLabel.frame)+10, kScreenWidth-20,kScreenHeight -300)];
        _contentLabel.backgroundColor =[UIColor magentaColor];
        [self.contentView addSubview:_contentLabel];
    }
    
    return _contentLabel;
    
}



- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
