 Pod::Spec.new do |s|
 s.name = 'FRTabBarController'
 s.version = '1.0.0'
 s.license = {:type => 'MIT', :file => "LICENSE"}
 s.summary = '自定义TabBarViewController,支持把tabbarItem直接设置为图片（利用button实现）'
 s.authors = {'FR' => '1366225686@qq.com'}
 s.platform = :ios, '8.0'
 s.homepage = 'https://github.com/fanrongQu/FRTabBarController'
 s.source = {:git => 'https://github.com/fanrongQu/FRTabBarController.git', :tag =>s.version}
 s.source_files = "FRTabBarController" 
 s.ios.deployment_target = '8.0'

end

