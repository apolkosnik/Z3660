#set_property PACKAGE_PIN R14 [get_ports {gpio_rtl_tri_io[0]}]
#set_property PACKAGE_PIN Y17 [get_ports {gpio_rtl_tri_io[1]}]
#set_property PACKAGE_PIN Y16 [get_ports {gpio_rtl_tri_io[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {gpio_rtl_tri_io[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {gpio_rtl_tri_io[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {gpio_rtl_tri_io[0]}]

set_property PACKAGE_PIN P15 [get_ports IIC_0_sda_io]
set_property PACKAGE_PIN P16 [get_ports IIC_0_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_scl_io]
set_property PULLUP true [get_ports IIC_0_sda_io]
set_property PULLUP true [get_ports IIC_0_scl_io]


set_property PACKAGE_PIN Y16 [get_ports NU_1]
set_property PACKAGE_PIN W18 [get_ports nCLKEN_clk]
set_property PACKAGE_PIN Y17 [get_ports nTBI]
set_property PACKAGE_PIN R14 [get_ports BCLK_clk]

set_property DRIVE 16 [get_ports D040*]
set_property SLEW FAST [get_ports D040*]

set_property PACKAGE_PIN U7 [get_ports {D040[0]}]
set_property PACKAGE_PIN V7 [get_ports {D040[1]}]
set_property PACKAGE_PIN T9 [get_ports {D040[2]}]
set_property PACKAGE_PIN U10 [get_ports {D040[3]}]
set_property PACKAGE_PIN Y7 [get_ports {D040[4]}]
set_property PACKAGE_PIN Y6 [get_ports {D040[5]}]
set_property PACKAGE_PIN V8 [get_ports {D040[6]}]
set_property PACKAGE_PIN W8 [get_ports {D040[7]}]
set_property PACKAGE_PIN T12 [get_ports {D040[8]}]
set_property PACKAGE_PIN U12 [get_ports {D040[9]}]
set_property PACKAGE_PIN V12 [get_ports {D040[10]}]
set_property PACKAGE_PIN W13 [get_ports {D040[11]}]
set_property PACKAGE_PIN P14 [get_ports {D040[12]}]
set_property PACKAGE_PIN W14 [get_ports {D040[13]}]
set_property PACKAGE_PIN Y14 [get_ports {D040[14]}]
set_property PACKAGE_PIN U15 [get_ports {D040[15]}]
set_property PACKAGE_PIN Y9 [get_ports {D040[16]}]
set_property PACKAGE_PIN Y8 [get_ports {D040[17]}]
set_property PACKAGE_PIN V11 [get_ports {D040[18]}]
set_property PACKAGE_PIN V10 [get_ports {D040[19]}]
set_property PACKAGE_PIN T11 [get_ports {D040[20]}]
set_property PACKAGE_PIN T10 [get_ports {D040[21]}]
set_property PACKAGE_PIN U13 [get_ports {D040[22]}]
set_property PACKAGE_PIN V13 [get_ports {D040[23]}]
set_property PACKAGE_PIN T14 [get_ports {D040[24]}]
set_property PACKAGE_PIN T15 [get_ports {D040[25]}]
set_property PACKAGE_PIN J18 [get_ports {D040[26]}]
set_property PACKAGE_PIN H18 [get_ports {D040[27]}]
set_property PACKAGE_PIN K19 [get_ports {D040[28]}]
set_property PACKAGE_PIN J19 [get_ports {D040[29]}]
set_property PACKAGE_PIN K17 [get_ports {D040[30]}]
set_property PACKAGE_PIN K18 [get_ports {D040[31]}]

set_property PACKAGE_PIN C20 [get_ports {A060[0]}]
set_property PACKAGE_PIN B20 [get_ports {A060[1]}]
set_property PACKAGE_PIN E17 [get_ports {A060[2]}]
set_property PACKAGE_PIN D18 [get_ports {A060[3]}]
set_property PACKAGE_PIN E18 [get_ports {A060[4]}]
set_property PACKAGE_PIN E19 [get_ports {A060[5]}]
set_property PACKAGE_PIN M19 [get_ports {A060[6]}]
set_property PACKAGE_PIN M20 [get_ports {A060[7]}]
set_property PACKAGE_PIN L19 [get_ports {A060[8]}]
set_property PACKAGE_PIN L20 [get_ports {A060[9]}]
set_property PACKAGE_PIN L16 [get_ports {A060[10]}]
set_property PACKAGE_PIN L17 [get_ports {A060[11]}]
set_property PACKAGE_PIN H16 [get_ports {A060[12]}]
set_property PACKAGE_PIN H17 [get_ports {A060[13]}]
set_property PACKAGE_PIN F19 [get_ports {A060[14]}]
set_property PACKAGE_PIN F20 [get_ports {A060[15]}]
set_property PACKAGE_PIN J20 [get_ports {A060[16]}]
set_property PACKAGE_PIN H20 [get_ports {A060[17]}]
set_property PACKAGE_PIN H15 [get_ports {A060[18]}]
set_property PACKAGE_PIN G15 [get_ports {A060[19]}]
set_property PACKAGE_PIN N15 [get_ports {A060[20]}]
set_property PACKAGE_PIN N16 [get_ports {A060[21]}]
set_property PACKAGE_PIN M14 [get_ports {A060[22]}]
set_property PACKAGE_PIN M15 [get_ports {A060[23]}]
set_property PACKAGE_PIN B19 [get_ports {A060[24]}]
set_property PACKAGE_PIN A20 [get_ports {A060[25]}]
set_property PACKAGE_PIN D19 [get_ports {A060[26]}]
set_property PACKAGE_PIN D20 [get_ports {A060[27]}]
set_property PACKAGE_PIN F16 [get_ports {A060[28]}]
set_property PACKAGE_PIN F17 [get_ports {A060[29]}]
set_property PACKAGE_PIN M17 [get_ports {A060[30]}]
set_property PACKAGE_PIN M18 [get_ports {A060[31]}]

set_property PACKAGE_PIN G17 [get_ports R_W040]
set_property PACKAGE_PIN G18 [get_ports nTA]
set_property PACKAGE_PIN G19 [get_ports nTEA]
set_property PACKAGE_PIN G20 [get_ports nTCI]
set_property PACKAGE_PIN K14 [get_ports PCLK_clk]
set_property PACKAGE_PIN J14 [get_ports CLK90_clk]
set_property PACKAGE_PIN L14 [get_ports CPUCLK_clk]
set_property PACKAGE_PIN L15 [get_ports nTS]
set_property PACKAGE_PIN K16 [get_ports {SIZ40[0]}]
set_property PACKAGE_PIN J16 [get_ports {SIZ40[1]}]

set_property PACKAGE_PIN P18 [get_ports BP]

set_property IOSTANDARD LVCMOS33 [get_ports R_W040]
set_property IOSTANDARD LVCMOS33 [get_ports nTA]
set_property IOSTANDARD LVCMOS33 [get_ports nTEA]
set_property IOSTANDARD LVCMOS33 [get_ports nTCI]
set_property IOSTANDARD LVCMOS33 [get_ports PCLK_clk]
set_property DRIVE 16 [get_ports PCLK_clk]
set_property IOSTANDARD LVCMOS33 [get_ports CLK90_clk]
set_property IOSTANDARD LVCMOS33 [get_ports CPUCLK_clk]
set_property IOSTANDARD LVCMOS33 [get_ports nTS]
set_property IOSTANDARD LVCMOS33 [get_ports {SIZ40[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SIZ40[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports BP]

set_property IOSTANDARD LVCMOS33 [get_ports NU_1]
set_property IOSTANDARD LVCMOS33 [get_ports nCLKEN_clk]
set_property IOSTANDARD LVCMOS33 [get_ports nTBI]
set_property IOSTANDARD LVCMOS33 [get_ports BCLK_clk]

set_property IOSTANDARD LVCMOS33 [get_ports {A060[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[24]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[25]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[26]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[27]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[28]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[29]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[30]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A060[31]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[24]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[25]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[26]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[27]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[28]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[29]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[30]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D040[31]}]

create_clock -period 5.000 -name hdmi_clk -waveform {0.000 2.500} [get_nets hdmi_clk]
set_output_delay -clock [get_clocks hdmi_clk] -min -2.000 [get_ports {hdmi_data[*]}]
set_output_delay -clock [get_clocks hdmi_clk] -max 0.000 [get_ports {hdmi_data[*]}]
set_output_delay -clock [get_clocks hdmi_clk] -min -2.000 [get_ports hdmi_de]
set_output_delay -clock [get_clocks hdmi_clk] -max 0.000 [get_ports hdmi_de]
set_output_delay -clock [get_clocks hdmi_clk] -min -2.000 [get_ports hdmi_hs]
set_output_delay -clock [get_clocks hdmi_clk] -max 0.000 [get_ports hdmi_hs]
set_output_delay -clock [get_clocks hdmi_clk] -min -2.000 [get_ports hdmi_vs]
set_output_delay -clock [get_clocks hdmi_clk] -max 0.000 [get_ports hdmi_vs]

set_property PACKAGE_PIN T16 [get_ports {hdmi_data[0]}]
set_property PACKAGE_PIN U17 [get_ports {hdmi_data[1]}]
set_property PACKAGE_PIN V15 [get_ports {hdmi_data[2]}]
set_property PACKAGE_PIN W15 [get_ports {hdmi_data[3]}]
set_property PACKAGE_PIN U18 [get_ports {hdmi_data[4]}]
set_property PACKAGE_PIN U19 [get_ports {hdmi_data[5]}]
set_property PACKAGE_PIN N18 [get_ports {hdmi_data[6]}]
set_property PACKAGE_PIN P19 [get_ports {hdmi_data[7]}]
set_property PACKAGE_PIN N20 [get_ports {hdmi_data[8]}]
set_property PACKAGE_PIN P20 [get_ports {hdmi_data[9]}]
set_property PACKAGE_PIN T20 [get_ports {hdmi_data[10]}]
set_property PACKAGE_PIN U20 [get_ports {hdmi_data[11]}]
set_property PACKAGE_PIN V20 [get_ports {hdmi_data[12]}]
set_property PACKAGE_PIN W20 [get_ports {hdmi_data[13]}]
set_property PACKAGE_PIN Y18 [get_ports {hdmi_data[14]}]
set_property PACKAGE_PIN Y19 [get_ports {hdmi_data[15]}]

set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_data[0]}]

set_property PACKAGE_PIN V16 [get_ports hdmi_vs]
set_property PACKAGE_PIN W16 [get_ports hdmi_hs]
set_property PACKAGE_PIN R16 [get_ports hdmi_de]
set_property PACKAGE_PIN R17 [get_ports hdmi_clk]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_clk]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_hs]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_de]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_vs]

#set_property PACKAGE_PIN P15 [get_ports IIC_0_sda_io]
#set_property PACKAGE_PIN P16 [get_ports IIC_0_scl_io]
#set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_sda_io]
#set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_scl_io]
#set_property PULLUP true [get_ports IIC_0_sda_io]
#set_property PULLUP true [get_ports IIC_0_scl_io]

set_property PACKAGE_PIN W19 [get_ports hdmi_intn]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_intn]
