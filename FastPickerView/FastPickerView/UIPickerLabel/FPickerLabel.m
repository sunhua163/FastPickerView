//
//  UIPickerLabel.m
//  NextVersion
//
//  Created by sunhua on 2017/5/10.
//  Copyright © 2017年 sunhua. All rights reserved.
//

#import "FPickerLabel.h"

@implementation FPickerLabel

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self addTap];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self addTap];
    }
    return self;
}

- (void)addTap{
    self.backgroundColor = [UIColor whiteColor];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction)];
    [self addGestureRecognizer:tap];
}

- (void)tapAction
{
    if (self.becomeResponse) {
        self.becomeResponse(YES);
    }
    
    [self becomeFirstResponder];
}

- (BOOL)isUserInteractionEnabled
{
    return YES;
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}
@end
