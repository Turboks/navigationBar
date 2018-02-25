//
//  tabController.m
//  navdemo
//
//  Created by 爱尚家 on 2018/2/25.
//  Copyright © 2018年 Mr_Kong. All rights reserved.
//

#import "tabController.h"


@interface tabController ()

@end

@implementation tabController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _view01 = [[ViewController01 alloc] init];
    _view02 = [[ViewController02 alloc] init];
    _view03 = [[ViewController03 alloc] init];
    
    UINavigationController *nav01 = [[UINavigationController alloc]initWithRootViewController:_view01];
    UINavigationController *nav02 = [[UINavigationController alloc]initWithRootViewController:_view02];
    UINavigationController *nav03 = [[UINavigationController alloc]initWithRootViewController:_view03];
    
    nav01.navigationBar.barTintColor = [UIColor orangeColor];
    nav02.navigationBar.barTintColor = [UIColor orangeColor];
    nav03.navigationBar.barTintColor = [UIColor orangeColor];

    
    nav01.tabBarItem.image = [UIImage imageNamed:@"select01"];
    nav02.tabBarItem.image = [UIImage imageNamed:@"select02"];
    nav03.tabBarItem.image = [UIImage imageNamed:@"select03"];

    nav01.title = @"第一页";
    nav02.title = @"第二页";
    nav03.title = @"第三页";

    self.viewControllers = @[nav01,nav02,nav03];
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
