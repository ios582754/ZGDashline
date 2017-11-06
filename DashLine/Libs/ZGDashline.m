//
//  ZGDashline.m
//  DashLine
//
//  Created by Apple on 2017/11/6.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "ZGDashline.h"

@implementation ZGDashline

- (instancetype)initWithFrame:(CGRect)frame withLineLength:(NSInteger)lineLength withLineSpacing:(NSInteger)lineSpacing withLineColor:(UIColor *)lineColor type:(ZGDashlineType)type {
     self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        _lineLength = lineLength;
        _lineSpacing = lineSpacing;
        _lineColor = lineColor;
        _height = frame.size.height;
        _width = frame.size.width;
        _lineType = type;
    }
    return self;
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context =UIGraphicsGetCurrentContext();
    CGContextBeginPath(context);
    CGContextSetLineWidth(context,1);
    
    if (_lineType == ZGDashlineHorizontalType) {
        CGContextSetStrokeColorWithColor(context, _lineColor.CGColor);
        CGFloat lengths[] = {_lineLength,_lineSpacing};
        CGContextSetLineDash(context, 0, lengths,2);
        CGContextMoveToPoint(context, 0, 0);
        CGContextAddLineToPoint(context, _width,1);
        CGContextStrokePath(context);
        CGContextClosePath(context);
    } else{
        CGContextSetStrokeColorWithColor(context, _lineColor.CGColor);
        CGFloat lengths[] = {_lineLength,_lineSpacing};
        CGContextSetLineDash(context, 0, lengths,2); //画虚线
        CGContextMoveToPoint(context, 0,0); //开始画线
        CGContextAddLineToPoint(context, 0, _height);
        CGContextStrokePath(context);
        CGContextClosePath(context);
        /*
         CGContextSetLineDash(line, 0, lengths,2); //画虚线
         CGContextMoveToPoint(line, 0,0); //开始画线
         CGContextAddLineToPoint(line, 0, imageView.frame.size.height);
         */
        
        
    }
 
}

@end
