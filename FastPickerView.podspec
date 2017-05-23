

Pod::Spec.new do |s|

  s.name         = "FastPickerView"
  s.version      = "0.0.1"
  s.summary      = "FastPickerView can creat pickerView fast."
  s.description  = <<-DESC
  这是一个关于pickerView的框架，可以便捷的更改pickerView的样式以及修改背景色
                   DESC
  s.homepage     = "https://github.com/sunhua163/FastPickerView"
  
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "sunhua" => "sunhua@yizijob.com" }
  
  s.source       = { :git => 'https://github.com/sunhua163/FastPickerView', :tag => s.version }

  
  s.source_files  = "Classes", "FastPickerView/FastPickerView/**/*.{h,m}"

  s.exclude_files = "Classes/Exclude"
  
  s.requires_arc = true
  s.platform = 'ios','8.0'
end
