Pod::Spec.new do |s|  
    s.name             = 'ffmpeg-kit-ios-video'
    s.version          = '6.0.LTS'
    s.summary          = 'FFmpeg Kit iOS Video Package - Custom Build'
    s.description      = 'Custom build of FFmpeg Kit iOS Video Package with video processing libraries: dav1d, fontconfig, freetype, fribidi, kvazaar, libass, libiconv, libtheora, libvpx, libwebp, snappy'
    s.homepage         = 'https://github.com/Days99/ffmpeg-kit-ios-pods'
    
    s.author           = { 'Days99' => 'diogo.g.dias09@gmail.com' }
    s.license          = { :type => 'LGPL-3.0', :file => 'LICENSE' }

    s.platform              = :ios
    s.requires_arc          = true
    s.libraries             = 'z', 'bz2', 'c++', 'iconv'

    s.source                = { :git => 'https://github.com/Days99/ffmpeg-kit-ios-pods.git', :tag => s.version.to_s }

    s.ios.deployment_target = '10.0'
    s.ios.frameworks        = 'AudioToolbox','AVFoundation','CoreMedia','VideoToolbox'
    s.ios.vendored_frameworks = [
        'ffmpegkit.xcframework',
        'libavcodec.xcframework', 
        'libavdevice.xcframework',
        'libavfilter.xcframework', 
        'libavformat.xcframework',
        'libavutil.xcframework', 
        'libswresample.xcframework', 
        'libswscale.xcframework'
    ]
end 

