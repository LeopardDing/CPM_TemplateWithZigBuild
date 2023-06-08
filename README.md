```sh
# config
cmake -B build -G Ninja -DCMAKE_TOOLCHAIN_FILE="cmake/toolchain-x86_64-linux-musl.cmake"

# build
cmake --build build
```