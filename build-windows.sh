git clone -b $(cat branch) --depth 1 --recursive https://github.com/NVIDIA-Omniverse/PhysX.git
cp vc17win64.xml Physx/physx/buildtools/presets/public/vc17win64.xml
cd PhysX/physx
./generate_projects.bat vc17win64
cmake --build compiler/vc17win64 --config Release
