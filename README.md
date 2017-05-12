# FastPickerView
这是一个pickerView的控件
### 推荐Pod方式
	 pod 'FastPickerView'
### 开发思路
需求有时候pickerview中有一列，有时候有两列，这个时候，我们需要实现UIPickerViewDelegate,UIPickerViewDataSource，
这就使得我们多了很多鸡肋的代码，事实上，我们只关注选中了哪个！！
有时候UI精(jian)益(zhi)求(zuo)精(si)，要求更改pickerView中字体样式

### CustomPickerAgent

dataSource 是一个包含数组的数组，dataSource中有几个数组，代表有几列
dataValueForKeys 是一个字符串数组，分别对应 dataSource中每组对象的属性key值，在代码实现中通过valueforkey获取对象对应的此属性的值
以下这两个代理方法分别负责选中cell的事件以及自定义cell样式 可以搞定一切 <br>

- (void)customPickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component chooseObj:(NSObject *)chooseObj; <br> <br>

- (UILabel *)customPickerLabel;
