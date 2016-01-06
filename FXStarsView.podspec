Pod::Spec.new do |s|
  s.name         = "FXStarsView"
  s.version      = "1.0.2"
  s.summary      = "if you want to arc4random set circle int you view, you can use it"
  s.homepage     = "https://github.com/zfx5130/FXStarsView"
  s.license      = "MIT"
  s.authors      = { 'thomas' => 'dui1cuo@126.com'}
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/zfx5130/FXStarsView.git", :tag => s.version }
  s.source_files = 'FXStarsView', 'FXStarsView/**/*.{h,m}'
  s.requires_arc = true
end
