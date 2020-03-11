#!/bin/sh
# https://github.com/tgingold/ghdlsynth-beta

# analyse vhdl sources
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

# synthesize the design
yosys -m ghdl -p 'ghdl zpu_top; synth_ice40 -blif hardware.blif'


# eof