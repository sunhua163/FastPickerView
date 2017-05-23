//
//  UIPickerLabel.h
//  NextVersion
//
//  Created by sunhua on 2017/5/10.
//  Copyright © 2017年 sunhua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FPickerLabel : UILabel

@property (nonatomic, copy) void (^becomeResponse)(BOOL response);

@property (nonatomic,strong) UIView *inputView;
@property (nonatomic,strong) UIView *inputAccessoryView;

@end
