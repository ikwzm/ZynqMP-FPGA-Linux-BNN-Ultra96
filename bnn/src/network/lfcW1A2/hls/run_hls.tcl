set config_network_name         "lfcW1A2"
set config_param_name           "mnist"
set config_expected_result      "3"
set config_part_name            "xczu3eg-sbva484-1-i"
set config_clock_period         "3"

set config_toplevel_name        "BlackBoxJam"
set config_project_name         "project"
set config_project_directory    [file dirname [info script]]

set config_top_directory        [file join $config_project_directory  ".." ".." ".." ".." ".."]
set config_bnn_pynq_directory   [file join $config_top_directory      "BNN-PYNQ"]
set config_tiny_cnn_directory   [file join $config_top_directory      "xilinx-tiny-cnn"]

set config_hw_src_directory     [file join $config_bnn_pynq_directory "bnn" "src" "network" $config_network_name "hw"]
set config_params_directory     [file join $config_bnn_pynq_directory "bnn" "params" $config_param_name $config_network_name]
set config_test_image_file      [file join $config_bnn_pynq_directory "tests" "Test_image" "3.image-idx3-ubyte"]
set config_lib_src_directory    [file join $config_bnn_pynq_directory "bnn" "src" "library" "hls"]
set config_host_src_directory   [file join $config_bnn_pynq_directory "bnn" "src" "host"]


puts "HLS project: $config_project_name"
puts "HW source dir: $config_hw_src_directory"
puts "BNN HLS library: $config_lib_src_directory"


# set up project
open_project  $config_project_name
add_files     [file join $config_hw_src_directory "top.cpp"] -cflags "-std=c++0x -I$config_lib_src_directory"

add_files -tb [file join $config_hw_src_directory ".." "sw" "main_python.cpp"] -cflags "-DOFFLOAD -DRAWHLS -std=c++0x -I$config_host_src_directory -I$config_lib_src_directory -I$config_tiny_cnn_directory -I$config_hw_src_directory"
add_files -tb [file join $config_host_src_directory "foldedmv-offload.cpp"]    -cflags "-DOFFLOAD -DRAWHLS -std=c++0x -I$config_host_src_directory -I$config_lib_src_directory -I$config_tiny_cnn_directory"
add_files -tb [file join $config_host_src_directory "rawhls-offload.cpp"]      -cflags "-DOFFLOAD -DRAWHLS -std=c++0x -I$config_host_src_directory -I$config_lib_src_directory -I$config_tiny_cnn_directory"

set_top $config_toplevel_name
open_solution sol1
set_part $config_part_name

# use 64-bit AXI MM addresses
config_interface -m_axi_addr64

# syntesize and export
create_clock -period $config_clock_period -name default
# csim_design -argv "$config_params_directory $config_test_image_file 10 $config_expected_result" -compiler clang
csynth_design
export_design -format ip_catalog
exit 0
