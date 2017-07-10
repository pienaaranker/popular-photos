# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'PopularPhotos' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  pod 'Alamofire', '~> 4.4'
  pod 'SwiftyJSON', '~> 3.1'
  pod 'Nuke', '~> 5.1'
  # Disable Code Coverage for Pods projects
  post_install do |installer_representation|
      installer_representation.pods_project.targets.each do |target|
          target.build_configurations.each do |config|
              config.build_settings['SWIFT_VERSION'] = '3.0'
              config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
          end
      end
  end
end
