//
//  NormalPickerView.m
//  NextVersion
//
//  Created by sunhua on 2017/5/9.
//  Copyright © 2017年 sunhua. All rights reserved.
//

#import "NormalPickerView.h"
#import "PickerInputAccessoryView.h"
@interface NormalPickerView ()

@property (nonatomic,strong) NSObject<UIPickerViewDelegate,UIPickerViewDataSource> *agent;

@end
@implementation NormalPickerView

- (instancetype)initWithDelegateRealize:(NSObject<UIPickerViewDelegate,UIPickerViewDataSource> *)agent
{
    if (self = [super init]) {
        
        self.agent = agent;
        self.delegate = agent;
        self.dataSource = agent;
        self.backgroundColor = [UIColor whiteColor];
        
    }
    return self;
}
@end
