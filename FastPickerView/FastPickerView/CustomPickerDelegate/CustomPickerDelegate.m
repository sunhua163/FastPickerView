//
//  CustomPickerDelegate.m
//  NextVersion
//
//  Created by sunhua on 2017/5/9.
//  Copyright © 2017年 sunhua. All rights reserved.
//

#import "CustomPickerDelegate.h"

@implementation CustomPickerDelegate

// UIPickerViewDataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return self.dataSource.count;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _dataSource[component].count;
}

// UIPickerViewDelegate
//- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component __TVOS_PROHIBITED
//{
//
//}
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component __TVOS_PROHIBITED
{
    return 44.f;
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(nullable UIView *)view __TVOS_PROHIBITED
{
    NSString *keyDes = _dataValueForKeys[component] ? _dataValueForKeys[component] : @"description";
    NSString *title = [_dataSource[component][row] valueForKey:keyDes];
    
    UILabel *pickerLabel = (UILabel*)view;
    if (!pickerLabel){
        
        if ([self.delegte respondsToSelector:@selector(customPickerLabel)]) {
            pickerLabel = [self.delegte customPickerLabel];
        }else{
            pickerLabel = [[UILabel alloc] init];
            //        pickerLabel.minimumScaleFactor = 0.2;
            pickerLabel.adjustsFontSizeToFitWidth = YES;
            [pickerLabel setTextAlignment:NSTextAlignmentCenter];
            [pickerLabel setBackgroundColor:[UIColor clearColor]];
            [pickerLabel setFont:[UIFont systemFontOfSize:19]];
            pickerLabel.textColor = [UIColor colorWithRed:26.0/255 green:26.0/255 blue:26.0/255 alpha:1];
        }
    }
    pickerLabel.text= title;
    return pickerLabel;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component __TVOS_PROHIBITED
{
    NSObject *obj = _dataSource[component][row];
    if ([self.delegte respondsToSelector:@selector(customPickerView:didSelectRow:inComponent:chooseObj:)]) {
        [self.delegte customPickerView:pickerView didSelectRow:row inComponent:component chooseObj:obj];
    }
}

@end
