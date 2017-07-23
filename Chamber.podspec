#
#  Be sure to run `pod spec lint Chamber.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "Chamber"
  s.version      = "0.0.2"
  s.summary      = "Network client that returns a Swift Object"
  s.description  = "Chamber is a wrapper around Alamofire that returns a Swift Object as a response."
  s.homepage     = "https://github.com/itsAlexNguyen/Chamber"
  s.license      = { :type => "MIT", :file => "License.md" }
  s.author       = { "Alex Nguyen" => "hello@gopher.it" }
  s.ios.deployment_target = '8.0'
  s.source       = { :git => "https://github.com/itsAlexNguyen/Chamber.git", :tag => s.version }
  s.source_files = 'Source/'

end
