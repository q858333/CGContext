//
//  ViewController.m
//  CGContext
//
//  Created by DengBin on 15/10/20.
//  Copyright © 2015年 DengBin. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect rect = CGRectMake(50, 50,200, 200);
    
    CustomView *vi = [[CustomView alloc]initWithFrame:rect];
   // [self.view addSubview:vi];
    
    
    /*
     *画虚线圆
     */
    CAShapeLayer *dotteLine =  [CAShapeLayer layer];
    CGMutablePathRef dottePath =  CGPathCreateMutable();
    dotteLine.lineWidth = 3.0f ;
    dotteLine.strokeColor = [UIColor orangeColor].CGColor;
    dotteLine.fillColor = [UIColor clearColor].CGColor;
    CGPathAddEllipseInRect(dottePath, nil, CGRectMake(50.0f,  50.0f, 200.0f, 200.0f));
    dotteLine.path = dottePath;
    //这是一个NSNumber的数组，索引从1开始记，奇数位数值表示实线长度，偶数位数值表示空白长度
    NSArray *arr = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:20],[NSNumber numberWithInt:5],[NSNumber numberWithInt:1] ,nil];
    dotteLine.lineJoin = kCALineJoinBevel;

    dotteLine.lineDashPattern = arr;
    dotteLine.lineDashPhase = 0.0;
   // dotteLine.path = path.CGPath;

    CGPathRelease(dottePath);
    [self.view.layer addSublayer:dotteLine];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
