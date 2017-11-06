//
//  ZGDashline.h
//  DashLine
//
//  Created by Apple on 2017/11/6.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    ZGDashlineHorizontalType,
    ZGDashlineVerticalType,
} ZGDashlineType;

@interface ZGDashline : UIView
{
    NSInteger _lineLength;
    NSInteger _lineSpacing;
    UIColor *_lineColor;
    CGFloat _height;
    CGFloat _width;
    ZGDashlineType _lineType;
}
- (instancetype)initWithFrame:(CGRect)frame withLineLength:(NSInteger)lineLength withLineSpacing:(NSInteger)lineSpacing withLineColor:(UIColor *)lineColor type:(ZGDashlineType)type ;
@end
