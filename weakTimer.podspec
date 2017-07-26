Pod::Spec.new do |s|
s.name = 'weakTimer'
s.version = '1.0.0'
s.license = 'MIT'
s.summary = 'NSTimer weak refrences'
s.homepage = 'https://github.com/SunnySunning/weakTimer.git'
s.authors = { 'SunnySunning' => '1475106659@qq.com' }
s.source = { :git => "https://github.com/SunnySunning/weakTimer.git", :tag => "1.0.0"}
s.requires_arc = true
s.ios.deployment_target = '8.0'
s.source_files = "weakTimer/*.{h,m}", "weakTimer/weakTimer.a"
s.frameworks = 'UIKit'
end
