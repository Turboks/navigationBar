//
//  tabController.h
//  navdemo
//
//  Created by 爱尚家 on 2018/2/25.
//  Copyright © 2018年 Mr_Kong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController01.h"
#import "ViewController02.h"
#import "ViewController03.h"


@interface tabController : UITabBarController<UITabBarControllerDelegate>
@property (nonatomic ,strong) ViewController01 * view01;
@property (nonatomic ,strong) ViewController02 * view02;
@property (nonatomic ,strong) ViewController03 * view03;

@end
