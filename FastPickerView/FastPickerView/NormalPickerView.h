//
//  NormalPickerView.h
//  NextVersion
//
//  Created by sunhua on 2017/5/9.
//  Copyright © 2017年 sunhua. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface NormalPickerView : UIPickerView

@property (nonatomic, copy) void (^selectBlock)(NSArray *selectArr);

// title 默认选中 选中回调 数据源 soucekey
- (instancetype)initWithDelegateRealize:(NSObject <UIPickerViewDelegate,UIPickerViewDataSource>*)agent;

@end
// 使用实例
/*
 NSArray *meizhouArray = @[@"梅县", @"五华县", @"丰顺县", @"大埔县", @"蕉岭县", @"兴宁市", @"梅江区"];
 NSArray *guangzhouArray = @[@"天河区", @"白云区", @"荔湾区", @"番禺区", @"海珠区", @"花都区", @"从化区", @"增城区"];
 NSArray *shenzhenArray = @[@"龙华新区", @"大鹏新区", @"福田区", @"罗湖区", @"宝安区", @"龙岗区", @"南山区"];
 
 // 设置代理
 CustomPickerDelegate *pickerAgent = [[CustomPickerDelegate alloc] init];
 pickerAgent.dataSource = @[meizhouArray,guangzhouArray,shenzhenArray];
 pickerAgent.delegte = self;
 
 // 创建 pickerView
 _picker = [[NormalPickerView alloc] initWithDelegateRealize:pickerAgent];
 
 // 创建 pickerView 上方的菜单栏 取消、确定以及半透明黑色背景在这里
 PickerInputAccessoryView *inputAccView = [PickerInputAccessoryView creatPickerInputAccessoryView];
 inputAccView.bounds = CGRectMake(0, 0, kScreenWith, kScreenHeight - _picker.frame.size.height);
 
 __weak typeof(self) WeakSelf = self;
 inputAccView.resultblock = ^(BOOL sure) {
 [WeakSelf.view endEditing:YES];
 };
 
 // 触发显示的label在这里
 _pickerLabelNew = [[UIPickerLabel alloc] initWithFrame:CGRectMake(10, 70, 100, 20)];
 _pickerLabelNew.text = @"new Anna";
 _pickerLabelNew.inputAccessoryView = inputAccView;
 _pickerLabelNew.inputView = _picker;
 [self.view addSubview:_pickerLabelNew];

 // 对选择结果的处理
 - (void)customPickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component chooseObj:(NSObject *)chooseObj
 {
 
 }
 */
