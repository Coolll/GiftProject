//
//  CarImageView.h
//  TestGift
//
//  Created by 龙培 on 17/6/6.
//  Copyright © 2017年 龙培. All rights reserved.
// 项目思路梳理：http://www.jianshu.com/p/f6fdf467b7f0
// 使用项目有问题时请到这里提issue：https://github.com/Coolll/GiftProject


#import <UIKit/UIKit.h>

@interface CarImageView : UIImageView

/**
 *  跑车的控制点 数组
 **/
@property (nonatomic,strong) NSArray *controlPointArray;
/**
 *  跑车的控制点变化的时间数组
 **/
@property (nonatomic,strong) NSArray *pointTimeArray;

/**
 *  跑车的尺寸变化 数组
 **/
@property (nonatomic,strong) NSArray *controlScaleArray;
/**
 *  跑车尺寸变化的时间数组
 **/
@property (nonatomic,strong) NSArray *scaleTimeArray;


/**
 *  跑车动画的起始位置
 **/
@property (nonatomic,assign) CGPoint startAnimatePoint;

/**
 *  跑车动画的结束位置
 **/
@property (nonatomic,assign) CGPoint endAnimatePoint;

/**
 *  动画的时间
 **/
@property (nonatomic,assign) CGFloat animateDuration;



- (instancetype)initCarImageViewWithOriginCenter:(CGPoint)originPoint;


- (void)startAnimation;


@end
