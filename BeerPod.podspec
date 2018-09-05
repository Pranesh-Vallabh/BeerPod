#
#  Be sure to run `pod spec lint BeerPod.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "BeerPod"
  s.version      = "0.0.1"
  s.summary      = "A short description of BeerPod."


  s.description  = <<-DESC
  BeerPod uses the Punk Api
                   DESC

  s.homepage     = "https://github.com/Pranesh-Vallabh/BeerPod"

  s.license      = "Copyleft"


  s.author      = { "Pranesh" => "phvallabh@gmail.com" }
 
  s.ios.deployment_target = "9.0"

  s.source = { :git => "https://github.com/Pranesh-Vallabh/BeerPod.git", :tag => "#{s.version}"}


  s.source_files  = "BeerPod/**/*.swift"

  s.frameworks = "UIKit", "Foundation"
  

  s.dependency "Alamofire"
  s.dependency "Swinject"
  
  s.swift_version = "4.2"

end
