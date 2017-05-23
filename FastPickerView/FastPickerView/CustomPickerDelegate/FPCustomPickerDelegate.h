//
//  CustomPickerDelegate.h
//  NextVersion
//
//  Created by sunhua on 2017/5/9.
//  Copyright © 2017年 sunhua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol FPCustomPickerAgent <NSObject>

@optional
- (void)customPickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component chooseObj:(NSObject *)chooseObj;

- (UILabel *)customPickerLabel;
@end
@interface FPCustomPickerDelegate : NSObject<UIPickerViewDelegate,UIPickerViewDataSource>

@property (nonatomic,weak) id<FPCustomPickerAgent> delegte;

// dataSource 中有几个数组，就是有几列
@property (nonatomic,strong) NSArray <NSArray *>*dataSource;
// 根据相应的属性(dataValueForKeys)获取到对应的值
@property (nonatomic,strong) NSArray <NSString *>*dataValueForKeys;

@end
