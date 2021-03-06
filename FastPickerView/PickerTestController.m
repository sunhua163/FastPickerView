//
//  PickerTestController.m
//  NextVersion
//
//  Created by sunhua on 2017/5/9.
//  Copyright © 2017年 sunhua. All rights reserved.
//

#import "PickerTestController.h"
#import "FPCustomPickerDelegate.h"
#import "FPickerInputAccessoryView.h"
#import "FPNormalPickerView.h"
#import "FPickerLabel.h"

@interface PickerTestController ()<FPCustomPickerAgent>
@property (weak, nonatomic) IBOutlet FPickerLabel *pickerLabel;

@property (nonatomic,strong) FPNormalPickerView *picker;
@end

@implementation PickerTestController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *meizhouArray = @[@"梅县", @"五华县", @"丰顺县", @"大埔县", @"蕉岭县", @"兴宁市", @"梅江区"];
    NSArray *guangzhouArray = @[@"天河区", @"白云区", @"荔湾区", @"番禺区", @"海珠区", @"花都区", @"从化区", @"增城区"];
    NSArray *shenzhenArray = @[@"龙华新区", @"大鹏新区", @"福田区", @"罗湖区", @"宝安区", @"龙岗区", @"南山区"];
    
    // 设置代理
    FPCustomPickerDelegate *pickerAgent = [[FPCustomPickerDelegate alloc] init];
    pickerAgent.dataSource = @[meizhouArray,guangzhouArray,shenzhenArray];
    pickerAgent.delegte = self;
    
    // 创建 pickerView
    _picker = [[FPNormalPickerView alloc] initWithDelegateRealize:pickerAgent];
    _pickerLabel.inputView = _picker;
    
    // 创建 pickerView 上方的菜单栏 取消、确定以及半透明黑色背景在这里
    FPickerInputAccessoryView *inputAccView = [FPickerInputAccessoryView creatPickerInputAccessoryView];
    CGSize size = [UIScreen mainScreen].bounds.size;
    inputAccView.bounds = CGRectMake(0, 0, size.width, size.height - _picker.frame.size.height);
    
    __weak typeof(self) WeakSelf = self;
    inputAccView.resultblock = ^(BOOL sure) {
        [WeakSelf.view endEditing:YES];
    };
    
    _pickerLabel.inputAccessoryView = inputAccView;
    
}

- (void)customPickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component chooseObj:(NSObject *)chooseObj
{
    _pickerLabel.text = chooseObj.description;
    
}

@end
