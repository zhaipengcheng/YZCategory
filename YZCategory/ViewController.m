//
//  ViewController.m
//  YZCategory
//
//  Created by 翟鹏程 on 2023/8/24.
//

#import "ViewController.h"
#import "UIButton+YZEventTimeInterval.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 80, 30);
    [button setTitle:@"按钮" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    button.yz_acceptEventInterval = 3.0;
}

- (void)buttonClick:(UIButton *)sender {
    NSLog(@"button click");
}


@end
