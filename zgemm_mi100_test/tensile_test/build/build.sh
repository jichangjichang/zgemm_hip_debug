#!/bin/bash

set -ex
echo && echo "################################################################################" && echo "# Configuring CMake for Client" && echo "################################################################################"
cmake -DTensile_RUNTIME_LANGUAGE=HIP -DTensile_CODE_OBJECT_VERSION=V2 -DTensile_COMPILER=hcc -DTensile_ARCHITECTURE=all -DTensile_RESUME_BENCHMARK=OFF -DTensile_CLIENT_BENCHMARK=ON -DTENSILE_NEW_CLIENT=OFF  -DCMAKE_BUILD_TYPE=Release -DTensile_MERGE_FILES=ON ../source
echo && echo "################################################################################" && echo "# Building Client" && echo "################################################################################"
cmake --build . --config Release -- -j 8
