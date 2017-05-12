//
//  PickerInputAccessoryView.h
//  NextVersion
//
//  Created by sunhua on 2017/5/9.
//  Copyright © 2017年 sunhua. All rights reserved.
//

#import <UIKit/UIKit.h>

// 推荐使用 方式 textfield.inputAccessoryView = [PickerInputAccessoryView creatPickerInputAccessoryView];
@interface PickerInputAccessoryView : UIView

@property (nonatomic, copy) void (^resultblock)(BOOL sure);

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

+ (instancetype)creatPickerInputAccessoryView;
@end
