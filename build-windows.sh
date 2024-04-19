git clone -b $(cat branch) --depth 1 --recursive https://github.com/sapien-sim/PhysX.git
sed -i 's/name="PX_BUILDSNIPPETS" value="True"/name="PX_BUILDSNIPPETS" value="False"/g' PhysX/physx/buildtools/presets/public/vc17win64.xml
sed -i 's/name="PX_BUILDPVDRUNTIME" value="True"/name="PX_BUILDPVDRUNTIME" value="False"/g' PhysX/physx/buildtools/presets/public/vc17win64.xml
sed -i 's/name="PX_GENERATE_STATIC_LIBRARIES" value="False"/name="PX_GENERATE_STATIC_LIBRARIES" value="True"/g' PhysX/physx/buildtools/presets/public/vc17win64.xml
cd PhysX/physx
./generate_projects.bat vc17win64
cmake --build compiler/vc17win64 --config Release
