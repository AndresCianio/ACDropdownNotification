#
# Be sure to run `pod lib lint ACDropdownNotification.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'ACDropdownNotification'
s.version          = '0.1.0'
s.summary          = 'Dropdown notification for iOS written in Swift.'

s.description      = <<-DESC
Dropdown notification for iOS written in Swift.
Ideally used to display In-App notifications, similar to the native ones, but customizable.
Based on https://github.com/AlvaroFranco/AFDropdownNotification.
DESC

s.homepage         = 'https://github.com/AndresCianio/ACDropdownNotification'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Andres Ciaño' => 'andres.cianio@gmail.com' }
s.source           = { :git => 'https://github.com/AndresCianio/ACDropdownNotification.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.4'

s.source_files = 'ACDropdownNotification/Classes/**/*'

# s.resource_bundles = {
#   'ACDropdownNotification' => ['ACDropdownNotification/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end
