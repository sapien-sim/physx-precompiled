git clone -b $(cat branch) --depth 1 --recursive https://github.com/NVIDIA-Omniverse/PhysX.git
cp linux.xml Physx/physx/buildtools/presets/public/linux.xml
sed -i 's/-Werror//g' PhysX/physx/source/compiler/cmake/linux/CMakeLists.txt
cd PhysX/physx
./generate_projects.sh linux
cmake --build compiler/linux-release --config Release
cmake --build compiler/linux-debug --config Debug
