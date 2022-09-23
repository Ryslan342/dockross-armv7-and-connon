#!/usr/bin/env bash

cd arm7

profile="default"

# Must be installed from cache
sudo conan install .. --build=missing --profile "$profile"

cmake .. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
cmake --build .