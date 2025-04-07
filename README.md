Running make will generate full buildroot system, including FPGA project.

Inside src/FPGA-firmware/ lives the Vivado firmware in TCL mode and a sh script that will build it:
./build.sh -V /path/to/vivado/settings64.sh -P Nexys_Video

Inside snapshots directory there are images that show the block diagram and details of DMA and ethernet blocks.
