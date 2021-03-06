OSX_MIN_VERSION=10.6
OSX_SDK_VERSION=10.7
OSX_SDK=$(SDK_PATH)/MacOSX$(OSX_SDK_VERSION).sdk
darwin_CC=clang -target $(host) -mmacosx-version-min=$(OSX_MIN_VERSION) --sysroot $(OSX_SDK)
darwin_CXX=clang++ -target $(host) -mmacosx-version-min=$(OSX_MIN_VERSION) --sysroot $(OSX_SDK)
darwin_CFLAGS=-pipe -O2
darwin_CXXFLAGS=$(darwin_CFLAGS)
darwin_native_toolchain=native_cctools
