#
# Be sure to run `pod lib lint ShadowSocks-libev-iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ShadowSocks-libev-iOS'
  s.version          = '3.1.3'
  s.summary          = 'Wrapper for ShadowSocks-libev.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This pod wraps ShadowSocks-libev and contains all necessary dependencies to compile it for iOS.
                       DESC

  s.homepage         = 'https://github.com/tladesignz/ShadowSocks-libev-iOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Benjamin Erhart' => 'be@benjaminerhart.com' }
  s.source           = { :git => 'https://github.com/tladesignz/ShadowSocks-libev-iOS.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/tladesignz'

  s.platform = :ios
  s.ios.deployment_target = '11.2'

  s.prepare_command = 'sh prepare.sh'

  s.requires_arc = false

  s.header_mappings_dir = 'ShadowSocks-libev-iOS'

  s.source_files = 'ShadowSocks-libev-iOS/shadowsocks-libev/src/acl.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/aead.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/base64.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/cache.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/common.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/crypto.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/jconf.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/json.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/local.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/netutils.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/plugin.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/ppbloom.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/protocol.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/resolv.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/rule.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/shadowsocks.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/socks5.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/stream.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/udprelay.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/uthash.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/utils.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/libbloom/*.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/libbloom/murmur2/*.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/libcork/**/*.{c,h}',
    'ShadowSocks-libev-iOS/shadowsocks-libev/libipset/**/*.{c,h}',
    'ShadowSocks-libev-iOS/pcre/*.{c,h}'

  s.public_header_files = 'ShadowSocks-libev-iOS/shadowsocks-libev/src/shadowsocks.h'

  s.private_header_files = 'ShadowSocks-libev-iOS/shadowsocks-libev/src/acl.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/aead.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/base64.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/cache.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/common.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/crypto.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/jconf.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/json.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/local.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/netutils.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/plugin.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/ppbloom.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/protocol.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/resolv.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/rule.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/socks5.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/stream.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/udprelay.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/uthash.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/src/utils.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/libbloom/*.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/libbloom/murmur2/*.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/libcork/**/*.h',
    'ShadowSocks-libev-iOS/shadowsocks-libev/libipset/**/*.h',
    'ShadowSocks-libev-iOS/pcre/*.h'

  s.compiler_flags = '-DCORK_API=CORK_LOCAL',
    '-DHAVE_PCRE_H',
    '-DVERSION="3.1.3"',
    '-DLIB_ONLY',
    '-DUDPRELAY_LOCAL',
    '-DMODULE_LOCAL',
    '-DHAS_SYSLOG',
    '-DCONNECT_IN_PROGRESS=EINPROGRESS',
    '-DTCP_NODELAY=0x01'

  s.subspec 'c-ares' do |cares|
    cares.preserve_paths = 'ShadowSocks-libev-iOS/c-ares/include/*.h'
    cares.vendored_libraries = 'ShadowSocks-libev-iOS/c-ares/lib/libcares.a'
    cares.libraries = 'cares'
    cares.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/ShadowSocks-libev-iOS/c-ares/include/*.h"}
  end

  s.subspec 'mbedtls' do |mbedtls|
    mbedtls.preserve_paths = 'ShadowSocks-libev-iOS/mbedtls-for-ios/include/mbedtls/*.h'
    mbedtls.vendored_libraries = 'ShadowSocks-libev-iOS/mbedtls-for-ios/lib/libmbedcrypto.a',
    'ShadowSocks-libev-iOS/mbedtls-for-ios/lib/libmbedtls.a',
    'ShadowSocks-libev-iOS/mbedtls-for-ios/lib/libmbedx509.a'
    mbedtls.libraries = 'mbedcrypto', 'mbedtls', 'mbedx509'
    mbedtls.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/ShadowSocks-libev-iOS/mbedtls-for-ios/include/mbedtls/*.h"}
  end

  s.library = 'resolv.9'
  s.dependency 'libsodium', '~> 1.0.12'
  s.dependency 'libev', '~> 4.15'
  
end
