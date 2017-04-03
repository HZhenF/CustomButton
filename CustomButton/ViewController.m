//
//  ViewController.m
//  CustomButton
//
//  Created by HZhenF on 17/3/28.
//  Copyright © 2017年 筝风放风筝. All rights reserved.
//

#import "ViewController.h"
#import "ZFButton.h"

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@property(nonatomic,strong) UIButton *btn1;

@property(nonatomic,strong) UIButton *btn2;

@end

@implementation ViewController

-(UIButton *)btn1
{
    if (!_btn1) {
        _btn1 = [[ZFButton alloc] initWithFrame:CGRectMake((ScreenWidth - 100)*0.5, 200, 100,100)];
//        _btn1.backgroundColor = [UIColor orangeColor];
        _btn1.titleLabel.font = [UIFont systemFontOfSize:11.0];
        [self.view addSubview:_btn1];
    }
    return _btn1;
}

-(UIButton *)btn2
{
    if (!_btn2) {
        _btn2 = [[ZFButton alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.btn1.frame), CGRectGetMaxY(self.btn1.frame) + 50, 100, 100)];
//        _btn2.backgroundColor = [UIColor orangeColor];
        [self.view addSubview:_btn2];
    }
    return _btn2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.btn1 setTitle:@"按钮一" forState:UIControlStateNormal];
    [self.btn1 setImage:[UIImage imageNamed:@"dog.png"] forState:UIControlStateNormal];
    [self.btn2 setTitle:@"按钮二" forState:UIControlStateNormal];
    [self.btn2 setImage:[UIImage imageNamed:@"1.jpg"] forState:UIControlStateNormal];
    
}


@end
