//
//  HTTools.m
//  HTCarouselScrollView
//
//  Created by 一米阳光 on 17/3/10.
//  Copyright © 2017年 一米阳光. All rights reserved.
//

#import "HTTools.h"

@implementation HTTools

+ (UIButton *)createButton:(CGRect)frame bgColor:(UIColor *)bgColor title:(NSString *)title titleColor:(UIColor *)titleColor tag:(NSInteger)tag action:(SEL)action vc:(id)vc {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    button.backgroundColor = bgColor;
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    button.tag = tag;
    [button addTarget:vc action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}

+ (UILabel *)createLabel:(CGRect)frame text:(NSString *)text textAlignment:(NSTextAlignment)textAlignment textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor tag:(NSInteger)tag {
    UILabel * label = [[UILabel alloc] init];
    label.frame = frame;
    label.text = text;
    label.textAlignment = textAlignment;
    label.textColor = textColor;
    label.backgroundColor = bgColor;
    label.tag = tag;
    return label;
}

+ (UIColor *)randomColor {
    return [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1];
}

@end
