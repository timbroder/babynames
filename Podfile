# Uncomment this line to define a global platform for your project
platform :ios, '10.0'
# Uncomment this line if you're using Swift
use_frameworks!

plugin 'cocoapods-acknowledgements'

def all_pods
    pod 'ARAnalytics', :subspecs => ['Mixpanel', 'DSL']
    pod 'Branch'
    pod 'BuddyBuildSDK'
    pod 'CPDAcknowledgements'
    pod 'Cartography', '~> 1.0'
    pod 'Crashlytics'
    pod 'Fabric'
    pod 'Google/Analytics'
    pod 'Instabug'
    pod 'JLRoutes', '~> 1.5'
    pod 'KVOController'
    pod 'RealmSwift', '~> 2.0'
    pod 'SwiftLint', '0.16.1'
    pod 'SwiftyUUID', '~> 1.1'
    pod 'SwiftyUserDefaults', '~> 3.0'
end

def testing_pods
    pod 'Quick', '~> 1.0'
    pod 'Nimble', '~> 6.0'
end

target 'BabyNames' do
    all_pods
end

target 'BabyNamesTests' do
    all_pods
    testing_pods
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
            config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
            config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
