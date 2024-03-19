git clone -b 105.1-physx-5.3.1 --depth 1 --recursive https://github.com/NVIDIA-Omniverse/PhysX.git
cp vc17win64.xml Physx\physx\buildtools\presets\public\vc17win64.xml
cd PhysX\physx
call .\generate_projects.bat vc17win64
cmake --build compiler\vc17win64 --config Release