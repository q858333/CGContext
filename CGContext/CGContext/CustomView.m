//
//  CustomView.m
//  CGContext
//
//  Created by DengBin on 15/10/20.
//  Copyright © 2015年 DengBin. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    CGRect frame = CGRectMake(0, 0, 100, 100);
    CGContextRef context = UIGraphicsGetCurrentContext();

    /*画填充圆
     
    //[[UIColor blackColor] setStroke];// 设置边框颜色

    [[UIColor blackColor] set];
    CGContextFillRect(context, rect);
    
    
    
    [[UIColor blueColor] setFill];// 设置背景填充色

    //根据rect画椭圆
    CGContextAddEllipseInRect(context, frame);
    
//    [[UIColor orangeColor] set];
    
    CGContextFillPath(context);
  
    */
    
    
    /*边框圆
  
    CGContextSetRGBStrokeColor(context, 255/255.0, 106/255.0, 0/255.0, 1);
    CGContextSetLineWidth(context, 1);
    
    //圆心坐标 x，y  。  偏移方向是由clockwise控制的，0为顺时针，1为逆时针。  0,0角度位于圆心的方。
   // CGContextAddArc(<#CGContextRef  _Nullable c#>, <#CGFloat x#>, <#CGFloat y#>, <#CGFloat radius#>, <#CGFloat startAngle#>, <#CGFloat endAngle#>, <#int clockwise#>)
    CGContextAddArc(context, 30, 30, 20, 0, 2*M_PI, 0);
    CGContextDrawPath(context, kCGPathStroke);
   */

    // Drawing code
}


@end
