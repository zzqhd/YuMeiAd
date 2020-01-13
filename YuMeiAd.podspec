#
# Be sure to run `pod lib lint YuMeiAd.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YuMeiAd'
  s.version          = '0.0.1'
  s.summary          = 'A short description of YuMeiAd.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zzqhd'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '729020128@qq.com' => '729020128@qq.com' }
  s.source           = { :git => 'https://github.com/zzqhd/YuMeiAd.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'

  # s.source_files = 'YuMeiAd/Classes/**/*'

  # s.resource_bundles = {
  #   'YuMeiAd' => ['YuMeiAd/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.frameworks = 'UIKit', 'MapKit'
  s.vendored_frameworks = 'YuMeiAd/Classes/Frameworks/YuMeiAd.framework'

  s.dependency 'GDTMobSDK' # 输入你想要的版本号
  s.dependency 'Bytedance-UnionAD'
  s.dependency 'SDWebImage'

  #valid_archs = ['armv7', 'armv7s', 'x86_64', 'arm64']
  #s.xcconfig = {
  #    'VALID_ARCHS' =>  valid_archs.join(' '),
  #}
  
end
