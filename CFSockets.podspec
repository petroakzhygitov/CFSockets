Pod::Spec.new do |s|

  s.name             = 'CFSockets'
  s.version          = '0.1.0'
  s.summary          = 'Objective-C wrappers for Core Foundation sockets'

  s.description      = <<-DESC
                       Core Foundation Sockets
Build Status

The project has four targets: a Cocoa framework with its unit test bundle, an iOS static library with its unit test bundle. The framework and the library share the same source files. The sources use Automatic Reference Counting (ARC).

Why the plural project name? The project goes by the name 'Core Foundation Sockets' rather than 'Core Foundation Socket.' This avoids confusion with CFSocket which represents just one component of the CFSockets project. The project's monolithic header imports as <CFSockets/CFSockets.h>. The additional s for the project prevents a clash with header <CFSockets/CFSocket.h> which only imports the CFSocket class.
                       DESC

  s.homepage         = 'https://github.com/petroakzhygitov/CFSockets'
  s.license          = 'MIT'
  s.author           = { 'petroakzhygitov' => 'petro.akzhygitov@gmail.com' }

  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '7.0'

  s.source           = { :git => 'https://github.com/petroakzhygitov/CFSockets.git', :tag => s.version.to_s }

  s.requires_arc = true

  s.source_files = 'CFSockets/**/*.{h,m}'
  s.public_header_files = 'CFSockets/*.{h}'
  
end