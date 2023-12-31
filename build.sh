#!/bin/bash

rm -rf build;
mkdir build;
cd build

cmake -DCMAKE_PREFIX_PATH="$(python -c 'import torch.utils; print(torch.utils.cmake_prefix_path)')" ..
cmake --build .