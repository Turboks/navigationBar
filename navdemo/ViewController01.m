//
//  ViewController01.m
//  navdemo
//
//  Created by 爱尚家 on 2018/2/25.
//  Copyright © 2018年 Mr_Kong. All rights reserved.
//

#import "ViewController01.h"
#import "ViewController01_01.h"

@interface ViewController01 ()<UITableViewDelegate,UITableViewDataSource>
{
    CGFloat alpha;
}
@property (nonatomic ,strong) UITableView * tab;
@property (nonatomic ,strong) UIView * bgView;
@end

@implementation ViewController01
- (UIView *)bgView{
    if (_bgView == nil) {
        _bgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.navigationController.navigationBar.bounds.size.width, self.navigationController.navigationBar.bounds.size.height+20)];
        [self.navigationController.view insertSubview:_bgView belowSubview:self.navigationController.navigationBar];
    }
    return _bgView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _tab = [[UITableView alloc] initWithFrame:CGRectMake(0, -64, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStyleGrouped];
    _tab.delegate = self;
    _tab.dataSource = self;
    [self.view addSubview:_tab];
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self bgView].backgroundColor = [UIColor colorWithRed:0.2 green:0.5 blue:0.7 alpha:alpha];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self bgView].backgroundColor = [UIColor orangeColor];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return nil;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.01;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellid = @"cell";
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellid];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"---%ld---",(long)indexPath.row];
//    int R = (arc4random() % 256) ;
//    int G = (arc4random() % 256) ;
//    int B = (arc4random() % 256) ;
//    [cell setBackgroundColor:[UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1]];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ViewController01_01 *vvv = [[ViewController01_01 alloc] init];
    [self.navigationController pushViewController:vvv animated:YES];
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    alpha = scrollView.contentOffset.y/600;
    if (alpha > 1) {
        alpha = 1;
    }
    if (scrollView == _tab) {
        [self bgView].backgroundColor = [UIColor colorWithRed:0.2 green:0.5 blue:0.7 alpha:alpha];
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
