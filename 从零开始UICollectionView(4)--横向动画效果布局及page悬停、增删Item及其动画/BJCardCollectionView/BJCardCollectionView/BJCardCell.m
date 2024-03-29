//
//  BJCardCell.m
//  BJCardCollectionView
//
//  Created by bradleyjohnson on 2016/10/28.
//  Copyright © 2016年 bradleyjohnson. All rights reserved.
//

#import "BJCardCell.h"

@interface BJCardCell ()

@property (nonatomic , strong) UILabel * titleLabel;

@end

@implementation BJCardCell

+(NSString *)reuseIdentifier
{
    return NSStringFromClass([self class]);
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.titleLabel];
        self.layer.anchorPoint = CGPointMake(0.5, 1);
    }
    return self;
}

-(void)layoutSubviews
{
    self.titleLabel.frame = self.contentView.bounds;
}

-(void)setTitle:(NSString *)title
{
    _title = title;
    
    self.titleLabel.text = _title;
}

-(UILabel *)titleLabel
{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.textColor = [UIColor blackColor];
    }
    
    return _titleLabel;
}

@end
