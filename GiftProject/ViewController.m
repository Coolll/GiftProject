//
//  ViewController.m
//  GiftProject
//
//  Created by 龙培 on 17/6/15.
//  Copyright © 2017年 龙培. All rights reserved.
//

#import "ViewController.h"
#import "CarImageView.h"
#import "PlaneView.h"

#define PhoneScreen_HEIGHT [UIScreen mainScreen].bounds.size.height
#define PhoneScreen_WIDTH [UIScreen mainScreen].bounds.size.width


@interface ViewController ()
{
    CarImageView *car;
    
    PlaneView *plane;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    //加载跑车
    [self loadCustomCarImageView];
    
    //加载战斗机
    [self loadPlaneView];
    
    [self loadCustomButton];

    
}

- (void)loadCustomButton
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(20, PhoneScreen_HEIGHT-50, (PhoneScreen_WIDTH-60)/2, 40);
    [button setTitle:@"跑车" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor lightGrayColor];
    [button addTarget:self action:@selector(showCar:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *twoButton = [UIButton buttonWithType:UIButtonTypeCustom];
    twoButton.frame = CGRectMake(20+(PhoneScreen_WIDTH-60)/2+20, PhoneScreen_HEIGHT-50, (PhoneScreen_WIDTH-60)/2, 40);
    [twoButton setTitle:@"飞机" forState:UIControlStateNormal];
    twoButton.backgroundColor = [UIColor lightGrayColor];
    [twoButton addTarget:self action:@selector(showPlane:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:twoButton];
    

    
}

- (void)showPlane:(UIButton*)sender
{
    //战斗机开始动画
    [plane startAnimation];
}

- (void)showCar:(UIButton*)sender
{
    //跑车开始动画
    [car startAnimation];
}

- (void)loadPlaneView
{
    //初始化
    plane = [[PlaneView alloc]initPlaneView];
    
    //开始位置
    plane.startPoint = CGPointMake(PhoneScreen_WIDTH , 0);
    
    //展示时的位置，从右向屏幕中间飞，途径的点
    NSValue *onePoint = [NSValue valueWithCGPoint:CGPointMake(PhoneScreen_WIDTH-30, 50)];
    NSValue *twoPoint = [NSValue valueWithCGPoint:CGPointMake(PhoneScreen_WIDTH/2+50, PhoneScreen_HEIGHT/2-90)];
    //展示时的位置
    plane.showPointArray = @[onePoint,twoPoint];
    //展示时每一帧的时间，0-1之间
    plane.showTimeArray = @[@0,@0.15,@0.5,@1.0];
    
    
    
    //飞机离开时的，从屏幕中部向屏幕左侧飞
    NSValue *oneLeavePoint = [NSValue valueWithCGPoint:CGPointMake(PhoneScreen_WIDTH/2-150, PhoneScreen_HEIGHT/2)];
    NSValue *twoLeavePoint =[NSValue valueWithCGPoint:CGPointMake(-200, PhoneScreen_HEIGHT/2+100)];
    //飞机位置
    plane.leavePointArray = @[oneLeavePoint,twoLeavePoint];
    //每一帧的时间
    plane.leaveTimeArray = @[@0,@0.5,@1.0];
    
    //飞机的初始位置，屏幕右侧
    plane.startPoint = CGPointMake(PhoneScreen_WIDTH, 0);
    //飞机
    plane.stayPoint = CGPointMake(PhoneScreen_WIDTH/2, PhoneScreen_HEIGHT/2-70);
    
    //飞机出场时间（从最右侧到屏幕中央的时间）
    plane.showDuration = 3.0;
    //飞机里长时间（从屏幕中央到最左侧的时间）
    plane.leaveDuration = 2.0;
    //爆炸的时间，也是飞机在屏幕中央停留的时间
    plane.boomDuration = 3.0;
    [self.view addSubview:plane];
}


- (void)loadCustomCarImageView
{
    //跑车位置
    car = [[CarImageView alloc]initCarImageViewWithOriginCenter:CGPointMake(-240, 0)];
    //跑车开始动画的位置
    car.startAnimatePoint = CGPointMake(0, 100);
    //跑车结束动画的位置
    car.endAnimatePoint = CGPointMake(600, 500);
    //跑车的尺寸大小
    car.controlScaleArray = @[@"0.5",@"1",@"1.2"];
    
    //跑车途径的点
    NSValue *onePoint = [NSValue valueWithCGPoint:CGPointMake(120, 150)];
    NSValue *twoPoint = [NSValue valueWithCGPoint:CGPointMake(180, 210)];
    NSValue *threePoint = [NSValue valueWithCGPoint:CGPointMake(240, 260)];
    car.controlPointArray = @[onePoint,twoPoint,threePoint];
    
    //移动时的帧动画时间
    car.pointTimeArray = @[@0,@0.15,@0.45,@0.7,@0.85,@1];
    //尺寸的帧动画时间
    car.scaleTimeArray = @[@0,@0.15,@0.45,@1];
    //整个动画的时间
    car.animateDuration = 5.0;
    [self.view addSubview:car];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
