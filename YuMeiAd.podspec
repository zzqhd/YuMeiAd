Pod::Spec.new do |s|
  #名称
  s.name         = "YuMeiAd"
  #版本号
  s.version      = "0.0.4"
  #简介
  s.summary      = "A short description of YuMeiAd"
  #项目主页地址
  s.homepage     = "https://github.com/zzqhd"
  #许可证
  s.license      = "MIT"
  #作者
  s.author       = { "729020128@qq.com" => "729020128@qq.com" }
  #项目的地址 （注意这里的tag位置，可以自己写也可以直接用s.version，但是与s.version一定要统一）
  s.source       = { :git => "https://github.com/zzqhd/YuMeiAd.git", :tag => s.version }
  #需要包含的源文件（也是个坑）按照你的文件层级来
  s.source_files = 'FogV3/FogV3.framework/Headers/*.{h}'
  #你的SDK路径（因为传的是静态库，这个必须要）
  s.vendored_frameworks = 'YuMeiAd/YuMeiAd.framework'
  #SDK头文件路径(可不要)
  s.public_header_files = 'YuMeiAd/YuMeiAd.framework/Headers/YuMeiAdManager.h'
  #依赖库
  s.frameworks = "Foundation", "UIKit"
  #支持最小系统版本
  s.platform     = :ios, "9.0"
  #依赖的第三方，有几个写几个
  s.dependency 'GDTMobSDK' # 输入你想要的版本号
  s.dependency 'Bytedance-UnionAD'
  s.dependency 'SDWebImage'
  
  
end
