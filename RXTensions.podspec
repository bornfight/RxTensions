#
# Be sure to run `pod lib lint RXTensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RXTensions'
  s.version          = '0.1.0'
  s.summary          = 'A short description of RXTensions.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  
  s.homepage         = 'https://github.com/<GITHUB_USERNAME>/EssentialPod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'd-srd' => 'dino.srdoc@degordian.com' }
  s.source           = { :git => 'https://d-srd@bitbucket.org/degordianmobile/rxtensionpod.git', :tag => s.version.to_s }
  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = true
    test_spec.source_files = 'RXTensions/Tests/*.{swift}'
  end  

  s.ios.deployment_target = '8.0'

  s.source_files = 'RXTensions/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RXTensions' => ['RXTensions/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'RxSwift'
  s.dependency 'RxCocoa'
  s.dependency 'Alamofire'
end
