# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = package['version']

source = { :git => 'https://github.com/Darkhorse-Fraternity/react-native-umeng-analytics.git' }


Pod::Spec.new do |s|
  s.name                   = "react-native-umeng-analytics"
  s.version                = version
  s.summary                = "A library for handling push notifications for your app, including permission handling and icon badge number." 
  s.homepage               = "http://facebook.github.io/react-native/"
  s.documentation_url      = "https://facebook.github.io/react-native/docs/pushnotificationios"
  s.license                = package["license"]
  s.author                 = "tonyYo"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = source
  s.source_files           = "ios/RCTUmengAnalytics/*.{h,m}"
  s.preserve_paths         = "package.json", "LICENSE", "LICENSE-docs"
  s.dependency "React"
  s.vendored_frameworks    = "ios/common_ios_1.4.2/normal/UMCommon.framework", "ios/analytics_ios_5.4.1/UMAnalytics.framework"
end
