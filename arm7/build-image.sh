#!/usr/bin/env bash

pip install conan --upgrade

cd arm7

profile="default"
conan profile new $profile --detect

cat ~/.conan/profiles/$profile

conan profile update settings.arch=armv7 $profile
conan profile update settings.arch_build=x86_64 $profile
#conan profile update settings.compiler.libcxx=libstdc++11 $profile

conan profile update conf.tools.system.package_manager:sudo=True $profile
conan profile update conf.tools.system.package_manager:mode=install $profile

export CONAN_SYSREQUIRES_MODE="enabled"
export CONAN_SYSREQUIRES_SUDO="1"

# Error here
sudo conan install .. --build=missing --profile "$profile"

# cmake .. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
# cmake --build .