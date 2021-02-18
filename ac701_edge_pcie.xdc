# set_property strategy Performance_ExplorePostRoutePhysOpt [get_runs impl_1] #I executed this after failing timing but somehow still generated bit file.

set_property PACKAGE_PIN U4 [get_ports CPU_RESET]
set_property IOSTANDARD LVCMOS15 [get_ports CPU_RESET]
# set_property PULLUP true [get_ports CPU_RESET_N]  # (for active low reset only)

set_property PACKAGE_PIN M20     [get_ports PCIE_PERSTN]
set_property IOSTANDARD LVCMOS33 [get_ports PCIE_PERSTN]
set_property PULLUP true [get_ports PCIE_PERSTN] 
set_false_path -from [get_ports PCIE_PERSTN]


set_property PACKAGE_PIN F11     [get_ports PCIE_CLK_Q0_P]
set_property PACKAGE_PIN E11     [get_ports PCIE_CLK_Q0_N]
create_clock -name sys_clk -period 10 [get_ports PCIE_CLK_Q0_P] 

#set_property LOC IBUFDS_GTE2_X0Y1 [get_cells util_ds_buf_0]


###############################################################################
# Timing Constraints
###############################################################################
#

set_property PACKAGE_PIN D12     [get_ports { PCIE_RXP[0] }]
set_property PACKAGE_PIN B13     [get_ports { PCIE_RXP[1] }]
set_property PACKAGE_PIN D14     [get_ports { PCIE_RXP[2] }]
set_property PACKAGE_PIN B11     [get_ports { PCIE_RXP[3] }]
set_property PACKAGE_PIN C12     [get_ports { PCIE_RXN[0] }]
set_property PACKAGE_PIN A13     [get_ports { PCIE_RXN[1] }]
set_property PACKAGE_PIN C14     [get_ports { PCIE_RXN[2] }]
set_property PACKAGE_PIN A11     [get_ports { PCIE_RXN[3] }]
set_property PACKAGE_PIN D10     [get_ports { PCIE_TXP[0] }]
set_property PACKAGE_PIN B9      [get_ports { PCIE_TXP[1] }]
set_property PACKAGE_PIN D8      [get_ports { PCIE_TXP[2] }]
set_property PACKAGE_PIN B7      [get_ports { PCIE_TXP[3] }]
set_property PACKAGE_PIN C10     [get_ports { PCIE_TXN[0] }]
set_property PACKAGE_PIN A9      [get_ports { PCIE_TXN[1] }]
set_property PACKAGE_PIN C8      [get_ports { PCIE_TXN[2] }]
set_property PACKAGE_PIN A7      [get_ports { PCIE_TXN[3] }]

# LED for checking PCIe endpoint user_link_up
set_property PACKAGE_PIN M26 [get_ports GPIO_LED]
set_property IOSTANDARD LVCMOS33 [get_ports GPIO_LED]

