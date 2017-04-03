//
//  ZFButton.m
//  CustomButton
//
//  Created by HZhenF on 17/3/28.
//  Copyright © 2017年 筝风放风筝. All rights reserved.
//

#import "ZFButton.h"

@implementation ZFButton

//纯代码布局会调用
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setupAttributesOfControl];
    }
    return self;
}

//使用storyBoard布局会调用
-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self setupAttributesOfControl];
    }
    return self;
}

-(void)setupAttributesOfControl
{
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont systemFontOfSize:12.0];
//    self.titleLabel.numberOfLines = 0;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}

//会被多次调用，alloc，set都会调用
-(CGRect)titleRectForContentRect:(CGRect)contentRect
{
    /*
     图上字下
     */
    CGFloat titleX = 0;
    CGFloat titleY = contentRect.size.height * 0.75;
    CGFloat titleW = contentRect.size.width;
    CGFloat titleH = contentRect.size.height - titleY;
    return CGRectMake(titleX, titleY, titleW, titleH);

    
    /*
     图左字右
     */
    
    /*
    CGFloat titleX = CGRectGetMaxX(self.imageView.frame);
    CGFloat titleY = 0;
    CGFloat titleW = CGRectGetWidth(contentRect) * 0.7 ;
    CGFloat titleH = CGRectGetHeight(contentRect);
    return CGRectMake(titleX, titleY, titleW, titleH);
     */
}

//会被多次调用，alloc，set都会调用
-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    /*
     图上字下
     */
    CGFloat imageW = CGRectGetWidth(contentRect);
    CGFloat imageH = contentRect.size.height * 0.7;
    return CGRectMake(0, 0, imageW, imageH);
    
    /*
     图左字右
     */
    
    /*
    CGFloat imageW = CGRectGetWidth(contentRect) * 0.3;
    CGFloat imageH = CGRectGetHeight(contentRect);
    return CGRectMake(0, 0, imageW, imageH);
     */
}

@end
