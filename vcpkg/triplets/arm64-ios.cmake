set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)
set(VCPKG_CMAKE_SYSTEM_NAME iOS)
set(VCPKG_OSX_DEPLOYMENT_TARGET 15.0)
set(VCPKG_OSX_ARCHITECTURES arm64)

# Fix autotools cross-compilation detection for iOS
# Without this, --host and --build are both aarch64-apple-darwin on Apple Silicon,
# causing configure to think it's not cross-compiling and try to run iOS binaries.
set(VCPKG_MAKE_BUILD_TRIPLET "--host=aarch64-apple-ios")

# --- krkr2-ios 补丁：7zip 24.09 在 arm64-ios 上需要 CRC 扩展才能编译 7zCrc.c ---
set(VCPKG_C_FLAGS "${VCPKG_C_FLAGS} -march=armv8.2-a+crypto+crc")
set(VCPKG_CXX_FLAGS "${VCPKG_CXX_FLAGS} -march=armv8.2-a+crypto+crc")