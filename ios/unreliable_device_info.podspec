#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'unreliable_device_info'
  s.version          = '0.0.1'
  s.summary          = 'For getting device info, including some that isn&#x27;t exposed in a official&#x2F;neat&#x2F;reliable way'
  s.description      = <<-DESC
For getting device info, including some that isn&#x27;t exposed in a official&#x2F;neat&#x2F;reliable way
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  s.ios.deployment_target = '8.0'
end

