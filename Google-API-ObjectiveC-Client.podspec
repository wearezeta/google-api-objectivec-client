#
#  Be sure to run `pod spec lint Google-API-ObjectiveC-Client.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = 'Google-API-ObjectiveC-Client'
  s.version      = '3.0.0'
  s.summary      = "Automatically exported from code.google.com/p/google-api-objectivec-client"

  s.description  = <<-DESC
                   A longer description of Google-API-ObjectiveC-Client in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/wearezeta/google-api-objectivec-client"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "Apache License 2.0"
  # s.license      = { :type => "Apache License 2.0", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "" => "" }
  # Or just: s.author    = ""
  # s.authors            = { "" => "" }
  # s.social_media_url   = "http://twitter.com/"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  # s.platform     = :ios, "5.0"

  #  When using multiple platforms
  s.ios.deployment_target = "8.0"
  # s.osx.deployment_target = "10.6"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { 
    :git => 'https://github.com/wearezeta/google-api-objectivec-client.git', 
    :tag => s.version.to_s }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  #  s.source_files  = "Source/*.{h,m}", "Source/HTTPFetcher/**/*.{h,m}", "Source/Networking/**/*.{h,m}", "Source/OAuth2/**/*.{h,m}", "Source/Objects/**/*.{h,m}", "Source/Utilities/**/*.{h,m}"
  # s.exclude_files = "Source/Tests/**/*.*", "Source/Tools/**/*.*", "Source/HTTPFetcher/Tests/**/*.*", "Source/GTLNetworking_Sources.m", "Source/GTLCommon_Sources.m"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  s.resources = "Source/Resources/*"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = false

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

  s.subspec 'Core' do |core|
    core.source_files = "Source/*.{h}", "Source/Objects/**/*.{h,m}", "Source/Utilities/**/*.{h,m}", "Source/HTTPFetcher/**/*.{h,m}"
    core.exclude_files = "Source/HTTPFetcher/Tests/**/*.*",  "Source/GTLNetworking_Sources.m", "Source/GTLCommon_Sources.m"    
  end

  s.subspec 'YouTube' do |youtube|
    youtube.source_files = "Source/Services/YouTube/**/*.{h,m}"
    youtube.exclude_files = "Source/Services/YouTube/Generated/GTLYouTube_Sources.m"
    youtube.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Webmasters' do |webmasters|
    webmasters.source_files = "Source/Services/Webmasters/**/*.{h,m}"
    webmasters.exclude_files = "Source/Services/Webmasters/Generated/GTLWebmasters_Sources.m"
    webmasters.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Urlshortener' do |urlshortener|
    urlshortener.source_files = "Source/Services/Urlshortener/**/*.{h,m}"
    urlshortener.exclude_files = "Source/Services/Urlshortener/Generated/GTLUrlshortener_Sources.m"
    urlshortener.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Tasks' do |tasks|
    tasks.source_files = "Source/Services/Tasks/**/*.{h,m}"
    tasks.exclude_files = "Source/Services/Tasks/Generated/GTLTasks_Sources.m"
    tasks.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Storage' do |storage|
    storage.source_files = "Source/Services/Storage/**/*.{h,m}"
    storage.exclude_files = "Source/Services/Storage/Generated/GTLStorage_Sources.m"
    storage.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Spectrum' do |spectrum|
    spectrum.source_files = "Source/Services/Spectrum/**/*.{h,m}"
    spectrum.exclude_files = "Source/Services/Spectrum/Generated/GTLSpectrum_Sources.m"
    spectrum.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'QPXExpress' do |qpxexpress|
    qpxexpress.source_files = "Source/Services/QPXExpress/**/*.{h,m}"
    qpxexpress.exclude_files = "Source/Services/QPXExpress/Generated/GTLQPXExpress_Sources.m"
    qpxexpress.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Prediction' do |prediction|
    prediction.source_files = "Source/Services/Prediction/**/*.{h,m}"
    prediction.exclude_files = "Source/Services/Prediction/Generated/GTLPrediction_Sources.m"
    prediction.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'PlusDomains' do |plusdomains|
    plusdomains.source_files = "Source/Services/PlusDomains/**/*.{h,m}"
    plusdomains.exclude_files = "Source/Services/PlusDomains/Generated/GTLPlusDomains_Sources.m"
    plusdomains.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Plus' do |plus|
    plus.source_files = "Source/Services/Plus/**/*.{h,m}"
    plus.exclude_files = "Source/Services/Plus/Generated/GTLPlus_Sources.m"
    plus.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Orkut' do |orkut|
    orkut.source_files = "Source/Services/Orkut/**/*.{h,m}"
    orkut.exclude_files = "Source/Services/Orkut/Generated/GTLOrkut_Sources.m"
    orkut.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Mirror' do |mirror|
    mirror.source_files = "Source/Services/Mirror/**/*.{h,m}"
    mirror.exclude_files = "Source/Services/Mirror/Generated/GTLMirror_Sources.m"
    mirror.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'MapsEngine' do |subspec|
    subspec.source_files = "Source/Services/MapsEngine/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/MapsEngine/Generated/GTLMapsEngine_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Licensing' do |subspec|
    subspec.source_files = "Source/Services/Licensing/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/Licensing/Generated/GTLLicensing_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Groupssettings' do |subspec|
    subspec.source_files = "Source/Services/Groupssettings/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/Groupssettings/Generated/GTLGroupssettings_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Gmail' do |subspec|
    subspec.source_files = "Source/Services/Gmail/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/Gmail/Generated/GTLGmail_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Fitness' do |subspec|
    subspec.source_files = "Source/Services/Fitness/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/Fitness/Generated/GTLFitness_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Drive' do |subspec|
    subspec.source_files = "Source/Services/Drive/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/Drive/Generated/GTLDrive_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Drive' do |subspec|
    subspec.source_files = "Source/Services/Drive/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/Drive/Generated/GTLDrive_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'DoubleClickBidManager' do |subspec|
    subspec.source_files = "Source/Services/DoubleClickBidManager/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/DoubleClickBidManager/Generated/GTLDoubleClickBidManager_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Discovery' do |subspec|
    subspec.source_files = "Source/Services/Discovery/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/Discovery/Generated/GTLDiscovery_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Compute' do |subspec|
    subspec.source_files = "Source/Services/Compute/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/Compute/Generated/GTLCompute_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'CivicInfo' do |subspec|
    subspec.source_files = "Source/Services/CivicInfo/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/CivicInfo/Generated/GTLCivicInfo_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Calendar' do |subspec|
    subspec.source_files = "Source/Services/Calendar/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/Calendar/Generated/GTLCalendar_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Books' do |subspec|
    subspec.source_files = "Source/Services/Books/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/Books/Generated/GTLBooks_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Blogger' do |subspec|
    subspec.source_files = "Source/Services/Blogger/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/Blogger/Generated/GTLBlogger_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'Bigquery' do |subspec|
    subspec.source_files = "Source/Services/Bigquery/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/Bigquery/Generated/GTLBigquery_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'AppState' do |subspec|
    subspec.source_files = "Source/Services/AppState/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/AppState/Generated/GTLAppState_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end
  
  s.subspec 'Analytics' do |subspec|
    subspec.source_files = "Source/Services/Analytics/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/Analytics/Generated/GTLAnalytics_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'AdSenseHost' do |subspec|
    subspec.source_files = "Source/Services/AdSenseHost/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/AdSenseHost/Generated/GTLAdSenseHost_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'AdSense' do |subspec|
    subspec.source_files = "Source/Services/AdSense/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/AdSense/Generated/GTLAdSense_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'AdExchangeSeller' do |subspec|
    subspec.source_files = "Source/Services/AdExchangeSeller/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/AdExchangeSeller/Generated/GTLAdExchangeSeller_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end

  s.subspec 'AdExchangeBuyer' do |subspec|
    subspec.source_files = "Source/Services/AdExchangeBuyer/**/*.{h,m}"
    subspec.exclude_files = "Source/Services/AdExchangeBuyer/Generated/GTLAdExchangeBuyer_Sources.m"
    subspec.dependency 'Google-API-ObjectiveC-Client/Core'
  end
    
end
