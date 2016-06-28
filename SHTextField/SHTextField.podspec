#
# Be sure to run `pod lib lint SHTextField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SHTextField"
  s.version          = "0.2.0"
  s.summary          = "The Smart textfield that automatically recognise the Various type of content to be added"



  s.description      = <<-DESC
The Smart textfield that automatically recognise the Various type of content The Smart textfield that automatically recognise the Various type of content to be added and allow to have validation check on the text enetred in it.
DESC

  s.homepage            = "https://github.com/sucharuhasija/SHTextField"

  s.license             = "MIT"
  s.author              = { "Sucharu Hasija" => "sucharuhasija@gmail.com" }
  s.source              = { :git => "https://github.com/sucharuhasija/SHTextField.git" , :tag => s.version.to_s}
  s.requires_arc        = true
  s.source_files        = 'Pod/Classes/**/*'
  s.platform            = :ios, "8.0"
  s.social_media_url = 'https://twitter.com/obusek'




end
