//
//  PlaneView.h
//  TestGift
//
//  Created by 龙培 on 17/6/7.
//  Copyright © 2017年 龙培. All rights reserved.
// 项目思路梳理：http://www.jianshu.com/p/f6fdf467b7f0
// 使用项目有问题时请到这里提issue：https://github.com/Coolll/GiftProject


#import <UIKit/UIKit.h>

@interface PlaneView : UIView

/**
 *  飞机展示时的控制点 数组
 **/
@property (nonatomic,strong) NSArray *showPointArray;
/**
 *  飞机展示时的控制点变化的时间数组
 **/
@property (nonatomic,strong) NSArray *showTimeArray;

/**
 *  飞机离开时的控制点 数组
 **/
@property (nonatomic,strong) NSArray *leavePointArray;
/**
 *  飞机离开的控制点变化的时间数组
 **/
@property (nonatomic,strong) NSArray *leaveTimeArray;


/**
 *  飞机动画的起始位置
 **/
@property (nonatomic,assign) CGPoint startPoint;

/**
 *  飞机动画的停留位置
 **/
@property (nonatomic,assign) CGPoint stayPoint;

/**
 *  展示动画的时间
 **/
@property (nonatomic,assign) CGFloat showDuration;

/**
 *  离开动画的时间
 **/
@property (nonatomic,assign) CGFloat leaveDuration;
/**
 *  爆炸的时间
 **/
@property (nonatomic,assign) CGFloat boomDuration;


- (instancetype) initPlaneView;


- (void)startAnimation;

@end
