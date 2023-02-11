/Volumes/T7/android/android11.0.0_r48/prebuilts/clang/host/darwin-x86/clang-r383902b1/bin/clang++ main.cpp -g -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk -o main

adb shell "/data/local/tmp/lldb-server platform --server --listen unix-abstract:///data/local/tmp/debug.sock &"
# 等待lldb-server启动结束
sleep 5

# 端口转发的方式
# port=9090
# adb forward tcp:$port tcp:$port
# adb shell "/data/local/tmp/lldb-server platform --listen '*:$port' --server &"
