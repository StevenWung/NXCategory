Pod::Spec.new do |s|
  s.name         = "NXCategory"
  s.version      = "1.0.0"
  s.summary      = "A collection of useful category for ios."
  s.homepage     = "https://github.com/StevenWung/NXCategory"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Steven Wung" => "StevenWung@yeah.net" }
  s.source       = { :git => "https://github.com/StevenWung/NXCategory.git", :tag => "1.0.0"}
  s.platform     = :ios, '7.0'
  s.source_files = '*.{h,m}'
  s.public_header_files = '*.h'
  s.frameworks = 'Foundation', 'UIKit', 'CoreData', 'MapKit'
  s.requires_arc = true
end
