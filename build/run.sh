#!/bin/sh
echo && echo "################################################################################" && echo "# Configuring CMake for Client" && echo "################################################################################"
cmake -DTensile_RUNTIME_LANGUAGE=HIP -DTensile_RESUME_BENCHMARK=OFF -DTensile_CLIENT_BENCHMARK=ON  -DCMAKE_BUILD_TYPE=Release -DTensile_MERGE_FILES=ON ../source
echo && echo "################################################################################" && echo "# Building Client" && echo "################################################################################"
cmake --build . --config Release -- -j 8
./client --platform-idx 0 --device-idx 0 --init-alpha 2 --init-beta 2 --init-d 0 --init-c 3 --init-a 3 --init-b 3 --c-equal-d 1 --print-valids 0 --print-max 4 --num-benchmarks 1 --num-elements-to-validate 256 --num-enqueues-per-sync 1 --num-syncs-per-benchmark 1 --use-gpu-timer 1 --sleep-percent 300
ERR=$?
exit $ERR
