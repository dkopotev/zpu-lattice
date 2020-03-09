#!/bin/sh

ghdl -a ../../../rtl/vhdl/zpu_pkg.vhdl
ghdl -a ../../../rtl/vhdl/bram.vhdl
ghdl -a ../../../rtl/vhdl/br_gen.vhdl
ghdl -a ../../../rtl/vhdl/debounce.vhdl
ghdl -a ../../../rtl/vhdl/gpio.vhdl
ghdl -a ../../../rtl/vhdl/txt_util.vhdl
ghdl -a ../../../rtl/vhdl/phi_io.vhdl
ghdl -a ../../../rtl/vhdl/rom_pkg.vhdl
ghdl -a ../../../rtl/vhdl/rx_unit.vhdl
ghdl -a ../../../rtl/vhdl/timer.vhdl
ghdl -a ../../../rtl/vhdl/tx_unit.vhdl
ghdl -a ../../../rtl/vhdl/zpu_medium.vhdl
ghdl -a ../../../rtl/vhdl/zpu_top.vhdl
ghdl -a ../../../bench/vhdl/trace.vhdl
ghdl -a ../../../bench/vhdl/dmips_med1_tb.vhdl
ghdl -e dmips_med1_tb
ghdl -r dmips_med1_tb --stop-time=20000us --vcd=../out/dmips_med1_tb.vcd
#ghdl -r dmips_med1_tb --stop-time=1us --write-wave-opt=../out/dmips_med1_tb.waveopt --wave=../out/dmips_med1_tb.ghw > \
  ../log/zpu_top.ghdl.log
#gtkwave ../out/dmips_med1_tb.ghw&