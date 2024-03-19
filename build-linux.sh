git clone -b $(cat branch) --depth 1 --recursive https://github.com/NVIDIA-Omniverse/PhysX.git
sed -i 's/name="PX_BUILDSNIPPETS" value="True"/name="PX_BUILDSNIPPETS" value="False"/g' PhysX/physx/buildtools/presets/public/linux.xml
sed -i 's/name="PX_BUILDPVDRUNTIME" value="True"/name="PX_BUILDPVDRUNTIME" value="False"/g' PhysX/physx/buildtools/presets/public/linux.xml
sed -i 's/-Werror//g' PhysX/physx/source/compiler/cmake/linux/CMakeLists.txt
cd PhysX/physx
./generate_projects.sh linux
cmake --build compiler/linux-release --config Release
cmake --build compiler/linux-debug --config Debug
