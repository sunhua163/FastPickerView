//
//  PickerInputAccessoryView.m
//  NextVersion
//
//  Created by sunhua on 2017/5/9.
//  Copyright © 2017年 sunhua. All rights reserved.
//

#import "FPickerInputAccessoryView.h"

@implementation FPickerInputAccessoryView

+ (instancetype)creatPickerInputAccessoryView
{
    FPickerInputAccessoryView *inputAccView = [[NSBundle mainBundle] loadNibNamed:@"FPickerInputAccessoryView" owner:self options:nil].lastObject;
    
    return inputAccView;
}

- (IBAction)cancelAction:(UIButton *)sender {
    if (self.resultblock) {
        self.resultblock(NO);
    }
    
}
- (IBAction)makeSureAction:(UIButton *)sender {
    if (self.resultblock) {
        self.resultblock(YES);
    }
}


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
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction)];
    [self addGestureRecognizer:tap];
}

- (void)tapAction
{
    if (self.resultblock) {
        self.resultblock(NO);
    }
}
@end
