#!/usr/bin/env bash

pip install conan

mkdir ~/.conan
cp ./arm7/settings.yml ~/.conan/settings.yml

## Build dir can be created locally
rm -rf arm7_build
mkdir arm7_build
cd arm7_build

export CONAN_SYSREQUIRES_MODE="enabled"
export CONAN_SYSREQUIRES_SUDO="1"

conan install .. --build=missing --profile "../arm7/profiles/default"
echo $? && exit 1;

cmake .. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
echo $? && exit 1;

cmake --build
echo $? && exit 1;

