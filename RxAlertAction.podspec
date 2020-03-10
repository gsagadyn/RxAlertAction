Pod::Spec.new do |s|
  s.name = 'RxAlertAction'
  s.version = '1.0.0'
  s.summary = 'The convenient way to combine UIAlertController and RxSwift'
  s.homepage = 'https://github.com/gsagadyn/RxAlertAction'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Grzegorz Sagadyn' => 'sagadyn@gmail.com' }
  s.source = { :git => 'https://github.com/gsagadyn/RxAlertAction.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'

  s.source_files = 'RxAlertAction/**/*'
  s.swift_versions = '5.1'
  s.dependency 'RxSwift', '~> 5.1'
  s.dependency 'RxCocoa', '~> 5.1'
end